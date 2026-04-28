WITH ranked_orders AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY order_id 
               ORDER BY order_date DESC
           ) AS rn
    FROM orders_dirty
)
SELECT *
FROM ranked_orders
WHERE rn = 1;
