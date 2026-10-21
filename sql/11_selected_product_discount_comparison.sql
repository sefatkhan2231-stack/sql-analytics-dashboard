
WITH selected_products AS (
    SELECT *
    FROM superstore
    WHERE product_id IN (
        'TEC-MA-10000418',
        'OFF-BI-10004995',
        'TEC-MA-10000822',
        'OFF-BI-10000545',
        'OFF-BI-10001359',
        'TEC-MA-10004125'
    )
)
SELECT
    product_id,
    product_name,
    CASE
        WHEN discount > 0.30 THEN 'Above 30%'
        ELSE '30% or less'
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
FROM selected_products
GROUP BY
    product_id,
    product_name,
    CASE
        WHEN discount > 0.30 THEN 'Above 30%'
        ELSE '30% or less'
    END
ORDER BY product_id,
      CASE
         WHEN discount > 0.30 THEN 'Above 30%'
         ELSE '30% or less'
      END;
