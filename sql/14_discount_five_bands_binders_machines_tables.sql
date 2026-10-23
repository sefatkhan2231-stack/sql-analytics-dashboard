
WITH bucketed AS (
    SELECT
        sub_category, order_id, quantity, sales, profit, discount,
        CASE
            WHEN ROUND(discount::numeric, 2) = 0     THEN 1
            WHEN ROUND(discount::numeric, 2) <= 0.10 THEN 2
            WHEN ROUND(discount::numeric, 2) <= 0.20 THEN 3
            WHEN ROUND(discount::numeric, 2) <= 0.30 THEN 4
            ELSE 5
        END AS sort_order
    FROM superstore
    WHERE sub_category IN ('Binders', 'Machines', 'Tables')
)
SELECT
    sub_category,
    CASE sort_order
        WHEN 1 THEN '0%' WHEN 2 THEN '1%-10%' WHEN 3 THEN '11%-20%'
        WHEN 4 THEN '21%-30%' ELSE 'Above 30%'
    END AS discount_band,
    COUNT(*)                       AS line_items,
    ROUND(SUM(sales)::numeric, 2)  AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin_pct
FROM bucketed
GROUP BY sub_category, sort_order
ORDER BY sub_category, sort_order;
