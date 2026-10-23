
WITH bucketed AS (
    SELECT
        sub_category,
        order_id,
        quantity,
        sales,
        profit,
        discount,
        CASE
            WHEN ROUND(discount::numeric, 2) = 0    THEN '0% discount'
            WHEN ROUND(discount::numeric, 2) <= 0.20 THEN '1%-20% discount'
            WHEN ROUND(discount::numeric, 2) <= 0.30 THEN '21%-30% discount'
            ELSE 'Above 30% discount'
        END AS discount_bucket,
        CASE
            WHEN ROUND(discount::numeric, 2) = 0    THEN 1
            WHEN ROUND(discount::numeric, 2) <= 0.20 THEN 2
            WHEN ROUND(discount::numeric, 2) <= 0.30 THEN 3
            ELSE 4
        END AS sort_order
    FROM superstore
    WHERE sub_category IN ('Binders', 'Machines', 'Tables')
)
SELECT
    sub_category,
    discount_bucket,
    COUNT(*)                                   AS line_items,
    COUNT(DISTINCT order_id)                   AS distinct_orders,
    SUM(quantity)                              AS units_sold,
    ROUND(SUM(sales)::numeric, 2)              AS total_sales,
    ROUND(SUM(profit)::numeric, 2)             AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin_pct,
    ROUND(AVG(discount)::numeric * 100, 2)     AS average_discount_pct
FROM bucketed
GROUP BY sub_category, discount_bucket, sort_order
ORDER BY sub_category, sort_order;
