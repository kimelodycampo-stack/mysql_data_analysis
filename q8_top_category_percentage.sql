USE olist;

-- Q8: What % of total revenue comes from the top category?

WITH category_revenue AS (
    SELECT
        p.product_category_name,
        SUM(oi.price) AS total_revenue
    FROM order_items AS oi
    JOIN products AS p
        ON oi.product_id = p.product_id
    WHERE p.product_category_name IS NOT NULL
    GROUP BY p.product_category_name
)

SELECT
    product_category_name,
    ROUND(total_revenue, 2) AS total_revenue,
    ROUND(
        total_revenue / SUM(total_revenue) OVER () * 100,
        2
    ) AS revenue_percentage
FROM category_revenue
ORDER BY total_revenue DESC;