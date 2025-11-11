WITH raw_customers AS (
  /* One record per person who has purchased one or more items */
  SELECT
    *
  FROM {{ source('ecom', 'raw_customers') }}
), "order" AS (
  SELECT
    *
  FROM raw_customers
  ORDER BY
    NAME ASC
  LIMIT 5
), test_model AS (
  SELECT
    *
  FROM "order"
)
SELECT
  *
FROM test_model