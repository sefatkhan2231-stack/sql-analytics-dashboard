
SELECT DISTINCT product_id, product_name, category, sub_category
FROM superstore
WHERE product_name ILIKE '%DocuBind P400%'
   OR product_name ILIKE '%Cubify CubeX%'
   OR product_name ILIKE '%Lexmark MX611dhe%'
ORDER BY product_name, product_id;


SELECT
    product_id,
    product_name,
    COUNT(*) FILTER (WHERE ROUND(discount::numeric, 2) <= 0.30) AS line_items_le30,
    COUNT(*) FILTER (WHERE ROUND(discount::numeric, 2) >  0.30) AS line_items_gt30,
    ROUND(SUM(sales)  FILTER (WHERE ROUND(discount::numeric, 2) <= 0.30)::numeric, 2) AS sales_le30,
    ROUND(SUM(sales)  FILTER (WHERE ROUND(discount::numeric, 2) >  0.30)::numeric, 2) AS sales_gt30,
    ROUND(SUM(profit) FILTER (WHERE ROUND(discount::numeric, 2) <= 0.30)::numeric, 2) AS profit_le30,
    ROUND(SUM(profit) FILTER (WHERE ROUND(discount::numeric, 2) >  0.30)::numeric, 2) AS profit_gt30,
    ROUND((SUM(profit) FILTER (WHERE ROUND(discount::numeric, 2) <= 0.30)
           / NULLIF(SUM(sales) FILTER (WHERE ROUND(discount::numeric, 2) <= 0.30), 0) * 100)::numeric, 2) AS margin_pct_le30,
    ROUND((SUM(profit) FILTER (WHERE ROUND(discount::numeric, 2) >  0.30)
           / NULLIF(SUM(sales) FILTER (WHERE ROUND(discount::numeric, 2) >  0.30), 0) * 100)::numeric, 2) AS margin_pct_gt30
FROM superstore
WHERE product_name ILIKE '%DocuBind P400%'
   OR product_name ILIKE '%Cubify CubeX%'
   OR product_name ILIKE '%Lexmark MX611dhe%'
GROUP BY product_id, product_name
ORDER BY product_name;


SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'superstore' AND column_name IN ('discount', 'sales', 'profit');
