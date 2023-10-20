WITH
  orders_2021 AS (
    # Total order pada tahun 2021
    SELECT COUNT(order_id) AS total_order_2021
    FROM `bigquery-public-data.thelook_ecommerce.orders`
    WHERE DATE(created_at) BETWEEN DATE('2021-01-01') AND DATE('2021-12-31')
  ),
  orders_2022 AS (
    # Total order pada tahun 2022
    SELECT COUNT(order_id) AS total_order_2022
    FROM `bigquery-public-data.thelook_ecommerce.orders`
    WHERE DATE(created_at) BETWEEN DATE('2022-01-01') AND DATE('2022-12-31')
  )

# Order growth dari tahun 2021 ke tahun 2022
SELECT 
  total_order_2021,
  total_order_2022,
  total_order_2022 - total_order_2021 AS order_growth
FROM orders_2021, orders_2022