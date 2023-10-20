#informasi user yang status ordernya telah complete
SELECT order_id, user_id, first_name, last_name, email, status
FROM `bigquery-public-data.thelook_ecommerce.users` as a
INNER JOIN `bigquery-public-data.thelook_ecommerce.orders` as b
ON a.id = b.user_id
WHERE status = "Complete"