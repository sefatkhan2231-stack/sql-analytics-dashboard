CREATE OR REPLACE VIEW vw_rfm AS
WITH cust AS (
    SELECT customer_id,
           (SELECT MAX(order_date) + 1 FROM superstore) - MAX(order_date) AS recency_days,
           COUNT(DISTINCT order_id) AS frequency,
           SUM(sales) AS monetary
    FROM superstore
    GROUP BY customer_id
),
scored AS (
    SELECT *,
           NTILE(5) OVER (ORDER BY recency_days DESC) AS r_score,
           NTILE(5) OVER (ORDER BY frequency)         AS f_score,
           NTILE(5) OVER (ORDER BY monetary)          AS m_score
    FROM cust
)
SELECT *,
       CASE
           WHEN r_score >= 4 AND f_score >= 4 THEN 'Champions'
           WHEN r_score >= 3 AND f_score >= 3 THEN 'Loyal'
           WHEN r_score >= 4 AND f_score <= 2 THEN 'New / Promising'
           WHEN r_score <= 2 AND f_score >= 3 THEN 'At Risk'
           WHEN r_score <= 2 AND f_score <= 2 THEN 'Lost'
           ELSE 'Needs Attention'
       END AS segment
FROM scored;