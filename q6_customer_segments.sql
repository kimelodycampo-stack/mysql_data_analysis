USE olist;

-- Q6: Segment customers into spend tiers (Low/Medium/High).

WITH customer_spend AS (
    SELECT
        o.customer_id,
        SUM(op.payment_value) AS total_spent
    FROM orders AS o
    JOIN order_payments AS op
        ON o.order_id = op.order_id
    GROUP BY o.customer_id
)

SELECT
    customer_id,
    ROUND(total_spent, 2) AS total_spent,
    CASE
        WHEN total_spent < 100 THEN 'Low'
        WHEN total_spent < 500 THEN 'Medium'
        ELSE 'High'
    END AS spend_segment
FROM customer_spend
ORDER BY total_spent DESC;