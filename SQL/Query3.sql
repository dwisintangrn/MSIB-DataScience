# produk dengan harga jual tertinggi
SELECT DISTINCT name, sale_price
FROM `bigquery-public-data.thelook_ecommerce.products` AS o
INNER JOIN `bigquery-public-data.thelook_ecommerce.order_items` AS u
ON o.id = u.product_id
WHERE sale_price = (SELECT MAX(sale_price) 
  FROM `bigquery-public-data.thelook_ecommerce.order_items` )