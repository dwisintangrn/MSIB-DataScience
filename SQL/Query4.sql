# total penjualan pada tahun 2021
SELECT SUM(sale_price) AS total_sale
FROM `bigquery-public-data.thelook_ecommerce.order_items` 
WHERE DATE(created_at) BETWEEN DATE('2021-01-01') AND DATE('2021-12-31')