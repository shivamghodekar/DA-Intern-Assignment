# 📊 ShopEase Data Analyst Intern Assessment

**Assessment:** Data Analyst Intern Take-Home Task  
**Dataset:** ShopEase Online Orders 2023–2024 (1,000 rows)  
**Tools Used:** Power BI / SQL / Python (Pandas, Matplotlib, Seaborn)

## ✅ Tasks Overview

| Task | Description | Status |
|------|-------------|--------|
| Task 1 | Data Cleaning & Exploration | Completed
| Task 2 | SQL / Analysis Queries | Completed
| Task 3 | Visualisations (5 charts) | Completed
| Task 4 | Written Summary | Completed

---

## 🗂️ Task Details

### Task 1 — Data Cleaning & Exploration

## Power BI File
[Download PBIX](./Task_1.pbix)

#### 1. a) How many orders are there in total? 
<img width="178" height="188" alt="image" src="https://github.com/user-attachments/assets/df840e4d-fa2e-45c3-b0d0-2a1795ce506c" />


#### 1. b) How many are Delivered / Returned / Cancelled?

- ##### Cancelled :-
<img width="353" height="152" alt="image" src="https://github.com/user-attachments/assets/1fea34ca-0385-4b2b-9eeb-b705964f0555" />

- ##### Delivered :-
<img width="336" height="143" alt="image" src="https://github.com/user-attachments/assets/f79a72cc-0dc6-48b7-9a2f-b8fb91c387e3" />

- ##### Returned :-
<img width="325" height="141" alt="image" src="https://github.com/user-attachments/assets/59d92017-c509-4fe4-b1b8-a735d1d585ac" />



#### 2) Are there any missing values? Which columns have them, and why do you think they're blank?

- Yes Missing value in the dataset, there are two columns have a missing values delivery_days column and return_reason column

- #### Why are they blank?

- ##### delivery_days :-
- This is blank mostly when the order is not delivered yet or cancelled.
- Because delivery time only exists after delivery happens

- ##### return_reason :-
- This is blank when the order is not returned.
- Only returned orders will have a reason.


    
#### 3. a) What is the date range of the dataset?

- ##### Date Range :- January 3, 2023 – December 31, 2024

<img width="426" height="107" alt="image" src="https://github.com/user-attachments/assets/17e05cbf-e937-4c1b-b8b4-49004e43a95e" />

#### 3. b) How many orders fall in 2023 vs 2024?

- ##### 2023 :-
<img width="269" height="136" alt="image" src="https://github.com/user-attachments/assets/a8949401-e195-4cbd-b45d-9efd95b0c306" />

- ##### 2024 :-
<img width="303" height="163" alt="image" src="https://github.com/user-attachments/assets/5420b733-beb1-47d8-9876-efeb2b3cf138" />



#### 4. a) What is the average delivery_days for Delivered orders,
<img width="203" height="135" alt="image" src="https://github.com/user-attachments/assets/16b54732-f290-47ac-8377-a4492895742a" />

#### 4. b) broken down by region?

- ##### Central :-
<img width="411" height="142" alt="image" src="https://github.com/user-attachments/assets/e34cab81-5ba7-42ca-88ed-09a4fa365200" />

- ##### East:-
<img width="412" height="137" alt="image" src="https://github.com/user-attachments/assets/89b6f41c-cbc0-4734-8fbf-233dc5952542" />

- ##### North :-
<img width="416" height="137" alt="image" src="https://github.com/user-attachments/assets/0c235dfb-9fb4-4b50-a77c-2db7db999cca" />

- ##### South :-
<img width="422" height="154" alt="image" src="https://github.com/user-attachments/assets/c47723ad-2b64-4466-9445-3815b1ea731f" />

- ##### West :-
<img width="403" height="146" alt="image" src="https://github.com/user-attachments/assets/4de35b9f-0339-482b-8ea3-6a7771befe97" />



#### 5) Which age group (e.g. 18–25, 26–35, 36–45, 46+) placed the most orders?

- ##### 46+ age placed most orders

- ##### 18-25 :-
<img width="354" height="134" alt="image" src="https://github.com/user-attachments/assets/55233543-5a02-452a-9f09-56c0d9d7da1c" />

- ##### 26-35 :-
<img width="357" height="130" alt="image" src="https://github.com/user-attachments/assets/2ac4d1a3-e8d5-4e32-8916-863627e5b686" />

- ##### 36-45 :-
<img width="353" height="141" alt="image" src="https://github.com/user-attachments/assets/1cecd946-d6ce-4b8a-9ba2-22c89f94d853" />

- ##### 46+ :-
<img width="336" height="147" alt="image" src="https://github.com/user-attachments/assets/f235ea1c-33d2-4eeb-ae39-3ccf4802c26a" />


  
### Task 2 — SQL / Analysis Queries

## Power BI File
[Download sql](./Task_2.sql)

- #### 1) Which 3 categories generated the highest total net revenue across both years?
  
  ```sql
  SELECT category, SUM(net_revenue_inr) AS net_revenue
  FROM shopease_orders
  GROUP BY 1
  ORDER BY net_revenue DESC
  LIMIT 3;
  
- #### 2) Compare total net revenue 2023 vs 2024 — did the business grow year-on-year?

  ```sql
  SELECT YEAR, SUM(net_revenue_inr) AS net_revenue
  FROM shopease_orders
  GROUP BY 1;
  

- #### 3. a) Which region had the highest average order value? 

  ```sql
  SELECT region, AVG(net_revenue_inr) AS order_value
  FROM shopease_orders
  GROUP BY 1
  ORDER BY order_value DESC
  LIMIT 1;

- #### 3. b) Which had the most cancellations?

  ```sql
  SELECT region, COUNT(*) AS most_cancellations
  FROM shopease_orders
  WHERE order_status='Cancelled'
  GROUP BY 1
  ORDER BY most_cancellations DESC
  LIMIT 1;

- #### 4. a) What is the most common return reason?

  ```sql
  SELECT return_reason, COUNT(*) AS common_return_reason
  FROM shopease_orders
  WHERE return_reason IS NOT NULL
  GROUP BY 1
  ORDER BY common_return_reason DESC
  LIMIT 1

- #### 4. b) Which category has the highest return rate?

  ```sql
  SELECT category, COUNT(CASE WHEN return_reason IS NOT NULL THEN 1 END)*1.0/COUNT(*) AS return_rate
  FROM shopease_orders
  GROUP BY 1
  ORDER BY return_rate DESC
  LIMIT 1;

- #### 5. a) Which payment method is most popular

  ```sql
  SELECT payment_method, COUNT(*) AS most_popular_method
  FROM shopease_orders
  GROUP BY 1
  ORDER BY most_popular_method DESC
  LIMIT 1;

- #### 5. b) does it vary by region?

  ```sql
  SELECT region, payment_method, COUNT(*) AS most_popular_method
  FROM shopease_orders
  GROUP BY 1,2
  ORDER BY 1,most_popular_method DESC

- #### 6) Find the top 5 products by total net revenue

  ```sql
  SELECT product_name, SUM(net_revenue_inr) AS total_net_revenue
  FROM shopease_orders
  GROUP BY 1
  ORDER BY total_net_revenue DESC
  LIMIT 5;
    
### Task 3 — Visualisations

## Power BI File
[Download PBIX](./Task_1.pbix)

| # | Chart Type | What It Shows |
|---|-----------|---------------|
| 1 | Bar Chart | Total net revenue by category |
| 2 | Line Chart | Monthly net revenue — 2023 vs 2024 |
| 3 | Grouped Bar | Order count by status per region |
| 4 | Pie / Donut | Payment method share |
| 5 | Custom | Interesting insight (explained in notebook) |

- #### Bar chart - Total net revenue by category (both years combined)
  
  <img width="418" height="274" alt="image" src="https://github.com/user-attachments/assets/a9f4a17f-9b15-4c89-9d11-6fa7abd62bd4" />

- #### Line chart - Monthly net revenue trend — show 2023 and 2024 as two separate lines
  
- #### Grouped bar - Order count by status (Delivered / Returned / Cancelled) per region
  
- #### Pie / Donut - Payment method share across all orders
  
- #### Your choice Any insight you find interesting — explain your chart choice in 1–2 sentences


### Task 4 — Written Summary

- Most important insight
- Year-on-year observation
- Underperforming area + possible reason
- One actionable recommendation

---


*Submitted as part of the Data Analyst Intern Assessment.*
