
WITH discount_groups AS (
    SELECT
        CASE
            WHEN discount = 0 THEN '0% discount'
            WHEN discount <= 0.20 THEN '1%-20% discount'
            WHEN discount <= 0.30 THEN '21%-30% discount'
            ELSE 'Above 30% discount'
        END AS discount_bucket,
        CASE
            WHEN discount = 0 THEN 1
            WHEN discount <= 0.20 THEN 2
            WHEN discount <= 0.30 THEN 3
            ELSE 4
        END AS sort_order,
        *
    FROM superstore
)
SELECT
    discount_bucket,
    COUNT(*) AS line_items,
    COUNT(DISTINCT order_id) AS distinct_orders,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_pct,
    ROUND(AVG(discount)::numeric * 100, 2) AS average_discount_pct,
    COUNT(*) FILTER (WHERE profit < 0) AS loss_making_line_items,
    ROUND(
        (COUNT(*) FILTER (WHERE profit < 0)::numeric / NULLIF(COUNT(*), 0) * 100),
        2
    ) AS loss_making_line_item_pct
FROM discount_groups
GROUP BY discount_bucket, sort_order
ORDER BY sort_order;
