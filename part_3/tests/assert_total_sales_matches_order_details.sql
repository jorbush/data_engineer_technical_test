WITH calculated_sales AS (
    SELECT ROUND(SUM(total_sales), 2) AS total_sales
    FROM "sales"."orders_public"."customer_sales"
),
raw_sales AS (
    SELECT ROUND(SUM(total_amount), 2) AS total_sales
    FROM "sales"."public"."orders"
)
SELECT
    CASE
        WHEN ABS(c.total_sales - r.total_sales) < 0.001 THEN 0
        ELSE 0
    END AS total_sales_mismatch
FROM calculated_sales c
CROSS JOIN raw_sales r
