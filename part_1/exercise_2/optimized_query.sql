CREATE INDEX idx_order_details_product_id ON Order_Details (product_id);
CREATE INDEX idx_order_details_order_id ON Order_Details (order_id);
CREATE INDEX idx_orders_order_date ON Orders (order_date);

SELECT
    p.category,
    SUM(od.quantity * od.price) AS total_sales
FROM
    Products p
JOIN
    Order_Details od ON p.product_id = od.product_id
JOIN
    Orders o ON od.order_id = o.order_id
WHERE
    o.order_date >= '2024-01-01'
GROUP BY
    p.category;
