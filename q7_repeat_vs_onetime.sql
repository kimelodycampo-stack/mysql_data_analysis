USE olist;

-- Q7: How many customers are repeat vs one-time buyers?

WITH customer_orders AS (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS order_count
    FROM customers AS c
    JOIN orders AS o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)

SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time buyer'
        ELSE 'Repeat buyer'
    END AS customer_type,
    COUNT(*) AS number_of_customers
FROM customer_orders
GROUP BY
    CASE
        WHEN order_count = 1 THEN 'One-time buyer'
        ELSE 'Repeat buyer'
    END
ORDER BY number_of_customers DESC;