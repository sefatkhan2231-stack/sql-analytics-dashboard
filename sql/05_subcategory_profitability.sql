
SELECT
    category,
    sub_category,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_pct,
    COUNT(DISTINCT order_id) AS distinct_orders,
    SUM(quantity) AS units_sold
FROM superstore
GROUP BY category, sub_category
ORDER BY SUM(profit) ASC;
