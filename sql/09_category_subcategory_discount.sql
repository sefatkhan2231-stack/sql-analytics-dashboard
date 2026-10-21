
SELECT
    category,
    sub_category,
    CASE
        WHEN discount = 0 THEN '0% discount'
        WHEN discount <= 0.30 THEN '30% discount or less'
        ELSE 'Above 30% discount'
    END AS discount_group,
    COUNT(*) AS line_items,
    COUNT(DISTINCT order_id) AS distinct_orders,
    SUM(quantity) AS units_sold,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_pct,
    ROUND(AVG(discount)::numeric * 100, 2) AS average_discount_pct
FROM superstore
GROUP BY
    category,
    sub_category,
    CASE
        WHEN discount = 0 THEN '0% discount'
        WHEN discount <= 0.30 THEN '30% discount or less'
        ELSE 'Above 30% discount'
    END
ORDER BY category, sub_category, discount_group;
