WITH order_totals AS (
    SELECT
        customer_id,
        SUM(total_amount) AS total_sales
    FROM {{ source('raw', 'orders') }}
    GROUP BY customer_id
)

SELECT
    c.customer_id,
    c.name,
    c.email,
    c.phone,
    COALESCE(ot.total_sales, 0) AS total_sales
FROM {{ ref('customers') }} c
LEFT JOIN order_totals ot ON c.customer_id = ot.customer_id
