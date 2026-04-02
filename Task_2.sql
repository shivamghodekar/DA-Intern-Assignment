
CREATE TABLE shopease_orders (
    order_id          VARCHAR(20),
    order_date        DATE,
    year              INT,
    month             VARCHAR(15),
    customer_id       VARCHAR(20),
    customer_age      INT,
    customer_city     VARCHAR(50),
    region            VARCHAR(20),
    category          VARCHAR(50),
    product_name      VARCHAR(100),
    quantity          INT,
    unit_price_inr    NUMERIC(10,2),
    discount_pct      NUMERIC(5,2),
    net_revenue_inr   NUMERIC(10,2),
    payment_method    VARCHAR(30),
    order_status      VARCHAR(20),
    delivery_days     INT,
    return_reason     VARCHAR(100)
);

-- 1) Which 3 categories generated the highest total net revenue across both years?

SELECT category, SUM(net_revenue_inr) AS net_revenue
FROM shopease_orders
GROUP BY 1
ORDER BY net_revenue DESC
LIMIT 3;

-- 2) Compare total net revenue 2023 vs 2024 — did the business grow year-on-year?

SELECT YEAR, SUM(net_revenue_inr) AS net_revenue
FROM shopease_orders
GROUP BY 1

-- 3. a) Which region had the highest average order value? 

SELECT region, AVG(net_revenue_inr) AS order_value
FROM shopease_orders
GROUP BY 1
ORDER BY order_value DESC
LIMIT 1;

-- 3. b) Which had the most cancellations?

SELECT region, COUNT(*) AS most_cancellations
FROM shopease_orders
WHERE order_status='Cancelled'
GROUP BY 1
ORDER BY most_cancellations DESC
LIMIT 1;

-- 4. a) What is the most common return reason? 

SELECT return_reason, COUNT(*) AS common_return_reason
FROM shopease_orders
WHERE return_reason IS NOT NULL
GROUP BY 1
ORDER BY common_return_reason DESC
LIMIT 1

-- 4. b) Which category has the highest return rate?

SELECT category, COUNT(CASE WHEN return_reason IS NOT NULL THEN 1 END)*1.0/COUNT(*) AS return_rate
FROM shopease_orders
GROUP BY 1
ORDER BY return_rate DESC
LIMIT 1;

-- 5. a) Which payment method is most popular 

SELECT payment_method, COUNT(*) AS most_popular_method
FROM shopease_orders
GROUP BY 1
ORDER BY most_popular_method DESC
LIMIT 1;

-- 5. b) does it vary by region?

SELECT region, payment_method, COUNT(*) AS most_popular_method
FROM shopease_orders
GROUP BY 1,2
ORDER BY 1,most_popular_method DESC

-- 6) Find the top 5 products by total net revenue

SELECT product_name, SUM(net_revenue_inr) AS total_net_revenue
FROM shopease_orders
GROUP BY 1
ORDER BY total_net_revenue DESC
LIMIT 5;

SELECT * FROM shopease_orders;





























