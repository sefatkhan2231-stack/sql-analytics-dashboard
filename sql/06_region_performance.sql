
SELECT
    region,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_pct,
    COUNT(DISTINCT order_id) AS distinct_orders,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM superstore
GROUP BY region
ORDER BY SUM(sales) DESC;
