
SELECT
    COUNT(*) FILTER (WHERE profit < 0) AS loss_rows,
    COUNT(*)                           AS total_rows,
    ROUND((COUNT(*) FILTER (WHERE profit < 0)::numeric / COUNT(*) * 100), 2) AS loss_row_pct
FROM superstore;


SELECT COUNT(*) AS ship_before_order_rows
FROM superstore
WHERE ship_date < order_date;


SELECT COUNT(*) AS rows_total, COUNT(DISTINCT row_id) AS distinct_row_ids
FROM superstore;


SELECT product_id,
       COUNT(DISTINCT product_name) AS name_count,
       ARRAY_AGG(DISTINCT product_name) AS product_names
FROM superstore
GROUP BY product_id
HAVING COUNT(DISTINCT product_name) > 1
ORDER BY name_count DESC, product_id;


SELECT product_name,
       COUNT(DISTINCT product_id) AS id_count,
       ARRAY_AGG(DISTINCT product_id) AS product_ids
FROM superstore
GROUP BY product_name
HAVING COUNT(DISTINCT product_id) > 1
ORDER BY id_count DESC, product_name;


SELECT LENGTH(postal_code::text) AS postal_code_length, COUNT(*) AS rows
FROM superstore
GROUP BY LENGTH(postal_code::text)
ORDER BY postal_code_length;
