
SELECT
    product_id,
    product_name,
    category,
    sub_category,
    COUNT(*) AS line_items,
    COUNT(DISTINCT order_id) AS distinct_orders,
    SUM(quantity) AS units_sold,
    ROUND(SUM(sales)::numeric, 2) AS high_discount_sales,
    ROUND(SUM(profit)::numeric, 2) AS high_discount_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS high_discount_margin_pct,
    ROUND(AVG(discount)::numeric * 100, 2) AS average_discount_pct
FROM superstore
WHERE discount > 0.30
GROUP BY product_id, product_name, category, sub_category
ORDER BY SUM(profit) ASC
LIMIT 15;
