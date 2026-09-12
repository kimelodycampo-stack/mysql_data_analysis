USE olist;

-- Q3: What is the month-over-month change in revenue?

WITH monthly_revenue AS (
    SELECT
        DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
        ROUND(SUM(op.payment_value), 2) AS total_revenue
    FROM orders AS o
    JOIN order_payments AS op
        ON o.order_id = op.order_id
    GROUP BY DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
)

SELECT
    month,
    total_revenue,
    ROUND(
        total_revenue - LAG(total_revenue) OVER (ORDER BY month),
        2
    ) AS mom_change
FROM monthly_revenue
ORDER BY month;