#jumlah order dengan status complete
SELECT COUNT(status) AS Completed
FROM `bigquery-public-data.thelook_ecommerce.orders` 
WHERE status = 'Complete'
