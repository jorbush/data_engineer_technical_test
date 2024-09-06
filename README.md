# Data Engineer Technical Test

## Part 1: SQL and Query Optimization

### Exercise 1: Writing Queries

#### Database schema for a sales system:
- **Customers** (customer_id, name, email, phone)
- **Orders** (order_id, customer_id, order_date, total_amount)
- **Order_Details** (order_detail_id, order_id, product_id, quantity, price)
- **Products** (product_id, name, category, price)

#### Instructions:
1. Write an SQL query to obtain the total amount spent by each customer in the last 6 months. The query should return: `customer_id`, `name`, `total_spent`.
2. Optimize the above query to ensure it is efficient, considering indexes and other optimization techniques.

#### Delivery:
- Include the SQL script for the initial query and the optimized version.
- Briefly explain the optimizations you made and why.

---

### Exercise 2: SQL Query Optimization

You are given the following SQL query, which is taking too long to execute:

```sql
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
```
#### Instructions:
- Optimize the above query.
- Describe the modifications you made and justify why they improve performance.

#### Delivery:
- Include the optimized SQL script.
- Explain the applied improvements.

---

## Part 2: Data Modeling

### Exercise 3: Data Modeling

We provide the following descriptions of the entities in an inventory management system:

1. **Products**: Items that can be bought or sold, including details such as price, category, and supplier.
2. **Suppliers**: Entities that provide products.
3. **Sales**: Transactions where products are sold to customers.

#### Instructions:
1. Design a data model that captures these entities and their relationships.
2. Explain whether you would use a 3NF, star, or snowflake modeling approach, and justify your choice.

#### Delivery:
- A diagram of the data model (it can be a simple drawing or a digital representation).
- A brief explanation of the chosen modeling approach.

---

## Part 3: DBT (Data Build Tool)

### Exercise 4: Creating DBT Models

Assume you have a database with the following tables: `raw_customers`, `raw_orders`, `raw_order_details`.

#### Instructions:
1. Create a DBT model that:
    - Normalizes the data from `raw_customers`.
    - Calculates total sales per customer using `raw_orders` and `raw_order_details`.
2. Describe how you would implement tests (unit tests) to ensure the quality of the data in these models.

#### Delivery:
- Include the relevant `.sql` and `.yml` files for DBT.
- Explain the testing process and any relevant configurations.

---

## Part 4: Data Analysis and PowerBI (Optional)

### Exercise 5: Data Analysis and Dashboard in PowerBI
*(Only if you have experience with PowerBI; otherwise, skip this section.)*

#### Instructions:
1. Using a dataset of your choice or one provided (e.g., sales data), create a dashboard in PowerBI that shows:
    - Sales by category.
    - Sales by region.
    - Monthly sales comparison.

#### Delivery:
- A PowerBI file (`.pbix`) with the dashboard.
- A brief explanation of the design decisions for the dashboard.

---
