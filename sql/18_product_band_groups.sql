

WITH banded AS (
    SELECT
        product_id, sales, profit,
        CASE
            WHEN ROUND(discount::numeric, 2) = 0     THEN 1
            WHEN ROUND(discount::numeric, 2) <= 0.20 THEN 2
            WHEN ROUND(discount::numeric, 2) <= 0.30 THEN 3
            ELSE 4
        END AS sort_order
    FROM superstore
),
product_band AS (
    SELECT product_id, sort_order,
           COUNT(*) AS line_items, SUM(sales) AS sales, SUM(profit) AS profit
    FROM banded
    GROUP BY product_id, sort_order
)
-- A. Only groups with at least 3 rows.
SELECT
    CASE sort_order WHEN 1 THEN '0%' WHEN 2 THEN '1%-20%'
                    WHEN 3 THEN '21%-30%' ELSE 'Above 30%' END AS discount_band,
    COUNT(*)                                   AS product_groups,
    COUNT(*) FILTER (WHERE profit < 0)         AS groups_with_loss,
    COUNT(*) FILTER (WHERE profit >= 0)        AS groups_profitable,
    ROUND(SUM(sales)::numeric, 2)              AS total_sales,
    ROUND(SUM(profit)::numeric, 2)             AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin_pct
FROM product_band
WHERE line_items >= 3
GROUP BY sort_order
ORDER BY sort_order;
