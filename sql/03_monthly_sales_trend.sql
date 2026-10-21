
WITH monthly_metrics AS (
    SELECT
        DATE_TRUNC('month', order_date)::date AS order_month,
        SUM(sales) AS total_sales,
        SUM(profit) AS total_profit,
        COUNT(DISTINCT order_id) AS total_orders
    FROM superstore
    GROUP BY DATE_TRUNC('month', order_date)::date
),
with_previous_month AS (
    SELECT
        order_month,
        total_sales,
        total_profit,
        total_orders,
        LAG(total_sales) OVER (ORDER BY order_month) AS previous_month_sales
    FROM monthly_metrics
)
SELECT
    order_month,
    ROUND(total_sales::numeric, 2) AS total_sales,
    ROUND(total_profit::numeric, 2) AS total_profit,
    total_orders,
    ROUND(previous_month_sales::numeric, 2) AS previous_month_sales,
    ROUND(
        ((total_sales - previous_month_sales) / NULLIF(previous_month_sales, 0) * 100)::numeric,
        2
    ) AS sales_mom_change_pct
FROM with_previous_month
ORDER BY order_month;
