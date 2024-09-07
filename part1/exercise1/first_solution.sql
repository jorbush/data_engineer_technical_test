SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_date >= (NOW() - INTERVAL '6 months')
GROUP BY c.customer_id
ORDER BY total_spent DESC;