
SELECT
    product_name,
    product_id,
    order_id,
    order_date,
    ROUND(discount::numeric * 100, 0)                         AS discount_pct,
    quantity,
    ROUND(sales::numeric, 2)                                  AS sales,
    ROUND(profit::numeric, 2)                                 AS profit,
    ROUND((profit / NULLIF(quantity, 0))::numeric, 2)         AS profit_per_unit
FROM superstore
WHERE product_name ILIKE '%DocuBind P400%'
   OR product_name ILIKE '%ProClick 150%'
   OR product_name ILIKE '%VeloBinder%'
   OR product_name ILIKE '%Ibimaster 500%'
   OR product_name ILIKE '%DocuBind TL300%'
   OR product_name ILIKE '%Cubify CubeX%'
   OR product_name ILIKE '%Lexmark MX611dhe%'
ORDER BY product_name, discount, order_date;


SELECT
    product_name,
    CASE WHEN ROUND(discount::numeric, 2) > 0.30
         THEN 'Above 30%' ELSE '30% or less (incl. 0%)' END AS discount_group,
    COUNT(*)                         AS line_items,
    ROUND(SUM(sales)::numeric, 2)    AS total_sales,
    ROUND(SUM(profit)::numeric, 2)   AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin_pct
FROM superstore
WHERE product_name ILIKE '%DocuBind P400%'
   OR product_name ILIKE '%ProClick 150%'
   OR product_name ILIKE '%VeloBinder%'
   OR product_name ILIKE '%Ibimaster 500%'
   OR product_name ILIKE '%DocuBind TL300%'
   OR product_name ILIKE '%Cubify CubeX%'
   OR product_name ILIKE '%Lexmark MX611dhe%'
GROUP BY product_name,
         CASE WHEN ROUND(discount::numeric, 2) > 0.30
              THEN 'Above 30%' ELSE '30% or less (incl. 0%)' END
ORDER BY product_name, discount_group;
