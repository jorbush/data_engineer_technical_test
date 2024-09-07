SELECT * FROM orders o
WHERE o.order_date >= NOW() - INTERVAL '6 months';
