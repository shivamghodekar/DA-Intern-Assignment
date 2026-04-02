# 📊 ShopEase Data Analyst Intern Assessment

**Assessment:** Data Analyst Intern Take-Home Task  
**Dataset:** ShopEase Online Orders 2023–2024 (1,000 rows)  
**Tools Used:** Python (Pandas, Matplotlib, Seaborn) / SQL / Excel *(update as applicable)*

---

## 📁 Repository Structure
```
├── README.md
├── data/
│   └── shopease_orders_2023_2024.csv
├── task1_data_cleaning_exploration/
│   └── task1.ipynb
├── task2_sql_analysis/
│   └── task2.ipynb / task2.sql
├── task3_visualisations/
│   ├── task3.ipynb
│   ├── chart1_revenue_by_category.png
│   ├── chart2_monthly_revenue_trend.png
│   ├── chart3_order_status_by_region.png
│   ├── chart4_payment_method_share.png
│   └── chart5_custom_insight.png
└── task4_summary/
    └── summary.md
```

---

## ✅ Tasks Overview

| Task | Description | Status |
|------|-------------|--------|
| Task 1 | Data Cleaning & Exploration | 🔄 In Progress |
| Task 2 | SQL / Analysis Queries | ⏳ Pending |
| Task 3 | Visualisations (5 charts) | ⏳ Pending |
| Task 4 | Written Summary | ⏳ Pending |

---

## 🗂️ Task Details

### Task 1 — Data Cleaning & Exploration
- Total orders, breakdown by Delivered / Returned / Cancelled
- Missing value analysis and explanation
- Date range and year-wise order distribution
- Average delivery days by region (Delivered orders only)
- Order count by age group (18–25, 26–35, 36–45, 46+)

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
