USE olist;

-- Q5: Rank top 3 products within each category by revenue.

WITH product_revenue AS (
    SELECT
        p.product_category_name,
        oi.product_id,
        SUM(oi.price) AS total_revenue
    FROM order_items AS oi
    JOIN products AS p
        ON oi.product_id = p.product_id
    WHERE p.product_category_name IS NOT NULL
    GROUP BY
        p.product_category_name,
        oi.product_id
),

ranked_products AS (
    SELECT
        product_category_name,
        product_id,
        total_revenue,
        ROW_NUMBER() OVER (
            PARTITION BY product_category_name
            ORDER BY total_revenue DESC
        ) AS product_rank
    FROM product_revenue
)

SELECT
    product_category_name,
    product_id,
    ROUND(total_revenue, 2) AS total_revenue,
    product_rank
FROM ranked_products
WHERE product_rank <= 3
ORDER BY
    product_category_name,
    product_rank;