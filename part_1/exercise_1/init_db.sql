CREATE TABLE IF NOT EXISTS Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS Products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS Order_Details (
    order_detail_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES Orders(order_id),
    product_id INT REFERENCES Products(product_id),
    quantity INT,
    price DECIMAL(10, 2)
);

INSERT INTO Customers (name, email, phone) VALUES
('John Doe', 'john@example.com', '123-456-7890'),
('Jane Smith', 'jane@example.com', '987-654-3210');

INSERT INTO Products (name, category, price) VALUES
('Laptop', 'Electronics', 1200.00),
('Phone', 'Electronics', 800.00),
('Tablet', 'Electronics', 500.00);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2020-01-01', 1200.00),
(2, '2020-01-02', 800.00),
(1, '2024-01-03', 500.00),
(2, '2024-05-04', 1200.00),
(1, '2024-07-05', 800.00),
(2, '2024-09-06', 500.00),
(1, '2020-05-01', 1200.00);

INSERT INTO Order_Details (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1200.00),
(2, 2, 1, 800.00),
(3, 3, 1, 500.00),
(4, 1, 1, 1200.00),
(5, 2, 1, 800.00),
(6, 3, 1, 500.00),
(7, 1, 1, 1200.00);
