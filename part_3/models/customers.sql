WITH normalized_customers AS (
    SELECT
        customer_id,
        TRIM(name) AS name,
        LOWER(TRIM(email)) AS email,
        COALESCE(phone, 'Unknown') AS phone
    FROM {{ source('raw', 'customers') }}
)

SELECT * FROM normalized_customers
