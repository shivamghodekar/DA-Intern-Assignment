# 📊 ShopEase Data Analyst Intern Assessment

**Assessment:** Data Analyst Intern Take-Home Task  
**Dataset:** ShopEase Online Orders 2023–2024 (1,000 rows)  
**Tools Used:** Power BI / SQL / Python (Pandas, Matplotlib, Seaborn)

## ✅ Tasks Overview

| Task | Description | Status |
|------|-------------|--------|
| Task 1 | Data Cleaning & Exploration | 
| Task 2 | SQL / Analysis Queries | 
| Task 3 | Visualisations (5 charts) | 
| Task 4 | Written Summary | 

---

## 🗂️ Task Details

### Task 1 — Data Cleaning & Exploration

- How many orders are there in total? How many are Delivered / Returned / Cancelled?
- Are there any missing values? Which columns have them, and why do you think they're blank?
- What is the date range of the dataset? How many orders fall in 2023 vs 2024?
- What is the average delivery_days for Delivered orders, broken down by region?
• Which age group (e.g. 18–25, 26–35, 36–45, 46+) placed the most orders?

### Task 2 — SQL / Analysis Queries
- Top 3 categories by total net revenue
- Year-on-year revenue comparison (2023 vs 2024)
- Region with highest average order value & most cancellations
- Most common return reason and highest return rate category
- Payment method popularity by region
- Top 5 products by total net revenue

### Task 3 — Visualisations
| # | Chart Type | What It Shows |
|---|-----------|---------------|
| 1 | Bar Chart | Total net revenue by category |
| 2 | Line Chart | Monthly net revenue — 2023 vs 2024 |
| 3 | Grouped Bar | Order count by status per region |
| 4 | Pie / Donut | Payment method share |
| 5 | Custom | Interesting insight (explained in notebook) |

### Task 4 — Written Summary
- Most important insight
- Year-on-year observation
- Underperforming area + possible reason
- One actionable recommendation

---

## 🛠️ Libraries Used
```
pandas
matplotlib
seaborn
jupyter
```

Install all dependencies:
```bash
pip install pandas matplotlib seaborn jupyter
```

---

## ▶️ How to Run

1. Clone this repository:
```bash
git clone https://github.com/your-username/shopease-da-assessment.git
cd shopease-da-assessment
```

2. Install dependencies:
```bash
pip install pandas matplotlib seaborn jupyter
```

3. Launch Jupyter Notebook:
```bash
jupyter notebook
```

4. Open tasks in order:
   - `task1_data_cleaning_exploration/task1.ipynb`
   - `task2_sql_analysis/task2.ipynb`
   - `task3_visualisations/task3.ipynb`

---

## 📝 Notes

- `net_revenue_inr` = `quantity × unit_price_inr × (1 − discount_pct / 100)`
- `delivery_days` is blank for Cancelled orders — expected missing data
- `return_reason` is blank unless `order_status = Returned` — expected missing data

---

## ⏱️ Time Spent

| Task | Approx. Time |
|------|-------------|
| Task 1 | ~20 min |
| Task 2 | ~30 min |
| Task 3 | ~40 min |
| Task 4 | ~10 min |
| **Total** | **~100 min** |

---

*Submitted as part of the Data Analyst Intern Assessment.*
