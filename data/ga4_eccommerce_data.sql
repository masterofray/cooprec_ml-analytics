WITH
  /* Step 1: Raw relevant events */
  raw_events AS (
    SELECT
      user_pseudo_id AS user_id,
      event_name,
      event_timestamp,
      device.category AS device_category,
      (
        SELECT value.int_value
        FROM UNNEST(event_params)
        WHERE key = 'ga_session_id'
      ) AS session_id,
      geo.country AS country,
      traffic_source.medium AS traffic_medium,
      items
    FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
    WHERE
      event_name IN ('view_item', 'add_to_cart', 'begin_checkout', 'purchase')
  ),

  /* Step 2: Explode items + clean product data */
  exploded_items AS (
    SELECT
      r.user_id,
      r.event_name,
      TIMESTAMP_MICROS(r.event_timestamp) AS event_ts,
      r.session_id,
      r.device_category,
      r.country,
      r.traffic_medium,
      item.item_id AS product_id,
      item.item_name AS product_name,
      item.item_brand AS brand,
      item.item_category AS department_id,
      item.item_category2 AS aisle_id,
      item.item_category3 AS category3,
      item.price,
      COALESCE(item.quantity, 1) AS quantity
    FROM raw_events r
    CROSS JOIN UNNEST(items) AS item
    WHERE
      item.item_id IS NOT NULL
      AND item.item_id != '(not set)'
      AND item.item_id != ''
  ),

  /* Step 3: Enrich with behavior type and score */
  interactions AS (
    SELECT
      *,
      CASE event_name
        WHEN 'view_item' THEN 'view'
        WHEN 'add_to_cart' THEN 'add_to_cart'
        WHEN 'begin_checkout' THEN 'begin_checkout'
        WHEN 'purchase' THEN 'purchase'
        END AS behavior_type,
      CASE event_name
        WHEN 'view_item' THEN 1
        WHEN 'add_to_cart' THEN 3
        WHEN 'begin_checkout' THEN 5
        WHEN 'purchase' THEN 10
        END AS interaction_score
    FROM exploded_items
  ),

  /* Step 4: User-level aggregates */
  user_aggregates AS (
    SELECT
      user_id,
      COUNT(DISTINCT session_id) AS num_sessions,
      COUNT(*) AS total_user_interactions,
      COUNTIF(behavior_type = 'purchase') AS user_purchase_events,
      SUM(CASE WHEN behavior_type = 'purchase' THEN quantity ELSE 0 END)
        AS user_total_units_purchased,
      COUNT(DISTINCT product_id) AS user_unique_products,
      MIN(event_ts) AS user_first_interaction,
      MAX(event_ts) AS user_last_interaction
    FROM interactions
    GROUP BY user_id
  ),

  /* Step 5: Item-level aggregates */
  item_aggregates AS (
    SELECT
      product_id,
      COUNT(*) AS total_item_interactions,
      COUNTIF(behavior_type = 'view') AS item_total_views,
      COUNTIF(behavior_type = 'add_to_cart') AS item_total_add_to_carts,
      COUNTIF(behavior_type = 'begin_checkout') AS item_total_checkouts,
      COUNTIF(behavior_type = 'purchase') AS item_total_purchases,
      COUNT(DISTINCT user_id) AS item_unique_users,
      SUM(CASE WHEN behavior_type = 'purchase' THEN quantity ELSE 0 END)
        AS item_total_units_sold,
      AVG(price) AS item_avg_price
    FROM interactions
    GROUP BY product_id
  ),

  /* Step 6: User-Product level aggregation */
  user_product_interactions AS (
    SELECT
      user_id,
      product_id,
      ANY_VALUE(product_name) AS product_name,
      ANY_VALUE(department_id) AS department_id,
      ANY_VALUE(aisle_id) AS aisle_id,
      ANY_VALUE(brand) AS brand,
      ANY_VALUE(category3) AS category3,
      AVG(price) AS avg_interaction_price,
      COUNTIF(behavior_type = 'view') AS view_count,
      COUNTIF(behavior_type = 'add_to_cart') AS add_to_cart_count,
      COUNTIF(behavior_type = 'begin_checkout') AS begin_checkout_count,
      COUNTIF(behavior_type = 'purchase') AS purchase_count,
      SUM(quantity) AS total_quantity,
      SUM(interaction_score) AS total_interaction_score,
      MAX(event_ts) AS last_interaction_ts,
      MIN(event_ts) AS first_interaction_ts,
      COUNT(*) AS num_interactions_per_user_product,
      ANY_VALUE(device_category) AS primary_device_category,
      ANY_VALUE(country) AS primary_country,
      ANY_VALUE(traffic_medium) AS primary_traffic_source
    FROM interactions
    GROUP BY user_id, product_id
  ),

  /* Step 7: Final enriched training dataset for recommender model */
  final_training_data AS (
    SELECT
      up.user_id,
      up.product_id,
      up.product_name,
      up.department_id,
      up.aisle_id,
      up.brand,
      up.category3,
      up.avg_interaction_price,
      up.view_count,
      up.add_to_cart_count,
      up.begin_checkout_count,
      up.purchase_count,
      up.total_quantity,
      up.total_interaction_score,
      up.last_interaction_ts,
      up.first_interaction_ts,
      up.num_interactions_per_user_product,
      up.primary_device_category,
      up.primary_country,
      up.primary_traffic_source,

      /* User Features */
      u.num_sessions,
      u.total_user_interactions,
      u.user_purchase_events,
      u.user_total_units_purchased,
      u.user_unique_products,
      DATE_DIFF(
        DATE(u.user_last_interaction), DATE(u.user_first_interaction), DAY)
        AS user_tenure_days,

      /* Item Features */
      i.total_item_interactions,
      i.item_total_views,
      i.item_total_add_to_carts,
      i.item_total_checkouts,
      i.item_total_purchases,
      i.item_unique_users,
      i.item_total_units_sold,
      i.item_avg_price,

      /* Time Features in GMT+9 (Asia/Tokyo) */
      UNIX_MICROS(up.last_interaction_ts) AS last_interaction_raw_unix_micros,
      DATE(DATETIME(up.last_interaction_ts, 'Asia/Tokyo'))
        AS last_interaction_date_gmt9,
      DATE(DATETIME(up.first_interaction_ts, 'Asia/Tokyo'))
        AS first_interaction_date_gmt9,
      TIME(DATETIME(up.last_interaction_ts, 'Asia/Tokyo'))
        AS last_interaction_time_gmt9,
      TIME(DATETIME(up.first_interaction_ts, 'Asia/Tokyo'))
        AS first_interaction_time_gmt9,
      TIMESTAMP_DIFF(up.last_interaction_ts, up.first_interaction_ts, HOUR)
        AS interaction_duration_hours,

      /* Day of week for LAST interaction in GMT+9 */
      FORMAT_DATE('%A', DATE(DATETIME(up.last_interaction_ts, 'Asia/Tokyo')))
        AS last_interaction_day_of_week_gmt9,

      /* Hour category (e.g. "06", "22") */
      LPAD(
        CAST(
          EXTRACT(HOUR FROM DATETIME(up.last_interaction_ts, 'Asia/Tokyo'))
          AS STRING),
        2,
        '0') AS last_interaction_hour_category_gmt9
    FROM user_product_interactions up
    LEFT JOIN user_aggregates u
      USING (user_id)
    LEFT JOIN item_aggregates i
      USING (product_id)
  )
SELECT *
FROM final_training_data
ORDER BY
  user_id,
  last_interaction_ts DESC
    /* LIMIT 50000 */
    ;
