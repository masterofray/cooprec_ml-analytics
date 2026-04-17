# Hybrid FPGrowth + Collaborative Filtering Recommender

A two‑stage hybrid recommendation system:
- **Stage 1:** FPGrowth for frequent itemset / association‑rule mining.
- **Stage 2:** Collaborative Filtering (user‑based or matrix‑factorization) for personalized ranking.

---

## 1. Overview

This project implements a **hybrid recommendation pipeline**:
1. **FPGrowth** discovers frequent itemsets and association rules from transaction data.
2. **Collaborative Filtering** (CF) uses the refined user–item matrix to generate personalized recommendations.

The hybrid design improves handling of **data sparsity** and **cold‑start** by combining global co‑occurrence patterns with user‑behavior similarity.

---

## 2. Data format

### Input needed

- `transactions.csv`  
  Columns: `user_id`, `item_id`, `[timestamp]`, `[quantity]` (optional).
  Each row represents one item in a transaction/basket.

- `minsup` and `minconf` values (e.g., 0.01, 0.3) for FPGrowth.

These files are used to:
- Mine frequent itemsets / association rules.
- Build the user–item matrix for CF.

---

## 3. Stage 1: FPGrowth (Pattern mining)

### Algorithm

- FPGrowth is used to:
  - Build an **FP‑Tree** from the transaction database.
  - Mine **frequent itemsets** whose support ≥ `minsup`.
  - Optionally extract **association rules** $X \rightarrow Y$ with $\text{supp} \geq \text{minsup}$ and $\text{conf} \geq \text{minconf}$.

### Mathematical formulation

- **Itemset support**:
  $$
  \text{supp}(X) = \frac{\#\{T \in D \mid X \subseteq T\}}{|D|}
  $$
  Frequent itemset: $\text{supp}(X) \geq \text{minsup}$.

- **Association rule confidence**:
  $$
  \text{conf}(X \rightarrow Y) = \frac{\text{supp}(X \cup Y)}{\text{supp}(X)}
  $$

### Output

- `frequent_itemsets.csv` or `association_rules.csv`  
  Columns: `itemset_X`, `itemset_Y`, `support`, `confidence` (for rules).

---

## 4. Stage 2: Collaborative Filtering (CF)

### Modeling options

You can choose one of the following CF models:

- **User‑based CF** (neighborhood method).
- **Item‑based CF** (neighborhood method).
- **Matrix factorization** (e.g., ALS) in latent space.

#### Similarity (user‑based example)

For users $u$ and $v$:

$$
\text{sim}(u, v) = \frac{
\sum_{i \in I_{uv}} (r_{u i} - \bar{r}_u)(r_{v i} - \bar{r}_v)
}{
\sqrt{\sum_{i \in I_{uv}} (r_{u i} - \bar{r}_u)^2}
\sqrt{\sum_{i \in I_{uv}} (r_{v i} - \bar{r}_v)^2}
}
$$

#### Prediction (user‑based CF)

Predict rating $\hat{r}_{u i}$:

$$
\hat{r}_{u i} = \bar{r}_u + 
\frac{
\sum_{v \in N_u(i)} \text{sim}(u, v) (r_{v i} - \bar{r}_v)
}{
\sum_{v \in N_u(i)} |\text{sim}(u, v)|
}
$$

#### Matrix factorization (ALS as example)

- $\hat{r}_{u i} = \mathbf{p}_u^\top \mathbf{q}_i$
- Loss:
  $$
  \min_{\mathbf{P}, \mathbf{Q}} \sum_{(u,i) \in \mathcal{O}} (r_{u i} - \mathbf{p}_u^\top \mathbf{q}_i)^2 
  + \lambda \left(
  \|\mathbf{P}\|_{F}^2 + \|\mathbf{Q}\|_{F}^2
  \right)
  $$

### How FPGrowth integrates into CF

- FP‑Growth patterns are used to:
  - **Pre‑filter** candidate items for each user (only items linked via association rules).
  - **Boost / weight** item interactions (e.g., higher “pseudo‑rating” for items involved in strong rules).
- This refined user–item matrix is fed into the CF model.

---

## 5. Pipeline steps

0. **Prepare data**  
   - Convert raw logs into `transactions.csv` (each row = item in a transaction).

1. **Run FPGrowth (Stage 1)**  
   - Build FP‑Tree.
   - Mine frequent itemsets / rules with given `minsup` and `minconf`.

2. **Refine user–item matrix**  
   - For each user, find items in their history.
   - For each rule $X \rightarrow Y$ where $X$ is in user’s history, strengthen $Y$’s weight.
   - Save as `R_refined.csv` or load directly into memory.

3. **Train Collaborative Filtering (Stage 2)**  
   - Choose CF type (user‑based, item‑based, or matrix factorization).
   - Fit the CF model on the refined matrix.

4. **Generate recommendations**  
   - For each user, compute $\hat{r}_{u i}$ for unseen items.
   - Rank by predicted score and return top‑K items.

---

## 6. Metrics

Evaluate recommendations using (example metrics):

- **Precision@K**, **Recall@K**, **NDCG@K**.
- Compare with:
  - Pure CF,
  - Pure FPGrowth (association‑rule‑based recommendations).

---

## 7. Requirements

- Python 3.x
- Libraries: `pandas`, `numpy`, `mlxtend` (for FPGrowth) or `spark‑ml` / custom FP‑Tree, `scikit‑learn` or `implicit` (for CF).

---

## 8. Quick start

```bash
# Install dependencies
pip install -r requirements.txt

# Run Stage 1 (FPGrowth)
python fpgrowth_stage1.py --input transactions.csv --minsup 0.01 --minconf 0.3

# Run Stage 2 (CF)
python cf_stage2.py --matrix R_refined.csv --model user_based --top_k 10
```

Output:
- `recommendations.csv`: `user_id`, `item_id`, `score`.