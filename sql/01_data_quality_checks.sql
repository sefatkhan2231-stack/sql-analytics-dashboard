
SELECT
    COUNT(*) AS row_count,
    COUNT(DISTINCT order_id) AS distinct_orders,
    COUNT(DISTINCT customer_id) AS distinct_customers,
    COUNT(DISTINCT product_id) AS distinct_products
FROM superstore;


SELECT
    COUNT(*) FILTER (WHERE order_id IS NULL) AS null_order_id,
    COUNT(*) FILTER (WHERE order_date IS NULL) AS null_order_date,
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS null_customer_id,
    COUNT(*) FILTER (WHERE product_id IS NULL) AS null_product_id,
    COUNT(*) FILTER (WHERE sales IS NULL) AS null_sales,
    COUNT(*) FILTER (WHERE profit IS NULL) AS null_profit,
    COUNT(*) FILTER (WHERE discount IS NULL) AS null_discount
FROM superstore;


SELECT COUNT(*) AS duplicate_row_count
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY row_id, order_id, order_date, ship_date, ship_mode,
                            customer_id, customer_name, segment, country, city, state,
                            postal_code, region, product_id, category, sub_category,
                            product_name, sales, quantity, discount, profit
               ORDER BY row_id
           ) AS rn
    FROM superstore
) AS checked_rows
WHERE rn > 1;


SELECT
    COUNT(*) FILTER (WHERE profit < 0) AS loss_making_line_items,
    COUNT(*) FILTER (WHERE profit = 0) AS zero_profit_line_items,
    COUNT(*) FILTER (WHERE profit > 0) AS profitable_line_items
FROM superstore;


SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    COUNT(*) FILTER (WHERE sales < 0) AS negative_sales_rows,
    COUNT(*) FILTER (WHERE quantity <= 0) AS non_positive_quantity_rows,
    COUNT(*) FILTER (WHERE discount < 0 OR discount > 1) AS unusual_discount_rows
FROM superstore;
