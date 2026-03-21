# cooprec_ml-analytics

## Author : Aryanto

📧 Email: aryanto.dandan@gmail.com<br>
💼 Data Science | Machine Learning | Recommender Systems | Learning-to-Rank  

---

## 🧠 About Me

I am a Data Scientist with strong experience in building **production-grade machine learning systems**, especially in:

- Recommendation Systems (Session-based & Transactional)
- Learning-to-Rank (LTR)
- Large-scale data processing (BigQuery, Firebase, GA4)
- End-to-end ML pipelines (EDA → Feature Engineering → Modeling → Evaluation → Deployment)

I focus on **business-impact-driven modeling**, ensuring that models are not just accurate, but also scalable, interpretable, and production-ready.

---

## 📌 Featured Project: Learning-to-Rank Recommendation System

This repository demonstrates a **complete end-to-end Learning-to-Rank pipeline** for e-commerce product recommendation using transaction data.

---

## ⚙️ What I Built

### 🔹 1. Data Exploration & Understanding
- Analyzed user behavior from transactional datasets
- Explored:
  - Reorder distribution
  - User activity patterns (day-of-week, hour-of-day)
- Identified **repeat purchase signals** as key target

---

### 🔹 2. Feature Engineering Pipeline (Production-Oriented)

I developed a **robust Feature Engineering class** that:

- Handles **data validation & schema normalization**
- Generates:
  - 👤 User-level features  
    - total orders  
    - reorder frequency  
    - average cart behavior  
  - 📦 Product-level features  
    - reorder rate  
    - popularity  
    - cart position trends  
- Uses **adaptive backend processing**:
  - Pandas (small data)
  - Polars (medium data)
  - DuckDB (large-scale joins)

✅ Designed to prevent:
- Data leakage
- Cartesian explosion
- Missing value issues

---

### 🔹 3. Learning-to-Rank Modeling

Implemented multiple ranking models:

#### ✅ XGBoost (Primary Model)
- Objective: `rank:ndcg`
- Optimized for top-K recommendation quality
- Histogram-based training for performance

#### ✅ LightGBM (Benchmark)
- Objective: `lambdarank`
- Efficient for large-scale ranking

#### ✅ CatBoost Ranker
- Used **YetiRank loss**
- Handles complex patterns and categorical behavior

#### ✅ Baseline Model
- RandomForest (as probabilistic ranking baseline)

---

### 📊 Evaluation Metrics (Business-Oriented)

Custom implementation of:

- **NDCG@K** → Ranking quality (top items matter most)
- **MAP@K** → Precision across top recommendations
- **MRR** → Speed of first relevant result

📈 Example Results:
- NDCG@5 ≈ **0.80+**
- MAP@5 ≈ **0.82+**
- MRR ≈ **0.84+**

👉 Indicates:
- Highly relevant items appear in **top 1–2 positions**
- Strong performance for real-world recommendation systems

---

### 🧪 4. Advanced Model Optimization

Built a **production-grade training framework**:

#### 🔥 AdvancedXGBRanker
- Hyperparameter tuning with **Optuna**
- Cross-validation using **GroupKFold (user-based split)**
- Parallel training using **Ray**
- Early stopping & pruning
- Weighted objective optimization (NDCG + MAP)

---

### 📈 5. Experiment Tracking & Reporting

Implemented a full experiment system:

#### ✅ ExperimentTracker
- 📊 HTML dashboard reports (interactive)
- 📉 Optimization history visualization
- 🧠 Parameter importance analysis
- 🔁 Experiment comparison (JSON history)
- 📦 MLflow integration:
  - log metrics
  - log parameters
  - save artifacts

---

### 🏗️ 6. Production Readiness

- Model saving & loading (XGBoost, LightGBM, CatBoost)
- Scalable data preparation pipeline
- API-ready prediction structure
- Modular class-based architecture

---

## 🧩 Tech Stack

- Python (Core)
- XGBoost, LightGBM, CatBoost
- Optuna (Hyperparameter tuning)
- Ray (Distributed computing)
- DuckDB / Polars / Pandas
- MLflow (Experiment tracking)
- Matplotlib / Plotly (Visualization)

---

## 🎯 Key Insights

- Learning-to-Rank significantly improves recommendation quality over traditional classification/regression
- Feature engineering (user & product behavior) is **critical for ranking performance**
- LightGBM and XGBoost show **comparable performance**, but trade-offs exist in:
  - speed
  - memory
  - deployment

---

## 🚀 What Makes This Project Different

✔ Not just modeling — **full ML system design**  
✔ Handles **real-world scale & constraints**  
✔ Includes **optimization + experiment tracking**  
✔ Designed for **production deployment**

---

## 📬 Contact

If you're interested in collaboration, hiring, or discussing ML systems:

📧 aryanto.dandan@gmail.com

---

## ⭐ If you find this useful

Give it a ⭐ and feel free to connect!