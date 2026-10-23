CREATE OR REPLACE VIEW vw_cohort_retention AS
WITH first_purchase AS (
    SELECT customer_id,
           DATE_TRUNC('month', MIN(order_date))::date AS cohort_month
    FROM superstore
    GROUP BY customer_id
),
activity AS (
    SELECT DISTINCT customer_id,
           DATE_TRUNC('month', order_date)::date AS activity_month
    FROM superstore
),
joined AS (
    SELECT f.cohort_month, a.customer_id,
           (EXTRACT(YEAR  FROM a.activity_month) - EXTRACT(YEAR  FROM f.cohort_month)) * 12
         + (EXTRACT(MONTH FROM a.activity_month) - EXTRACT(MONTH FROM f.cohort_month)) AS month_index
    FROM first_purchase f
    JOIN activity a USING (customer_id)
)
SELECT cohort_month, month_index::int AS month_index,
       COUNT(DISTINCT customer_id) AS customers
FROM joined
GROUP BY cohort_month, month_index;