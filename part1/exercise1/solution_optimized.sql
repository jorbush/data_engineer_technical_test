CREATE INDEX idx_orders_customer_id ON Orders (customer_id);
CREATE INDEX idx_orders_order_date ON Orders (order_date);

WITH params AS (
    SELECT NOW() - INTERVAL '6 months' AS date_limit
)
SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN params p ON o.order_date >= p.date_limit
GROUP BY c.customer_id;
