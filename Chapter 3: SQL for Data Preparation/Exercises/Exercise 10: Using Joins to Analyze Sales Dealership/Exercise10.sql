SELECT customers.customer_id,
customers.first_name,
customers.last_name,
customers.phone
FROM customers
INNER JOIN sales ON customers.customer_id = sales.customer_id
INNER JOIN products ON products.product_id = sales.product_id
WHERE products.product_type = 'automobile'
AND customers.phone IS NOT NULL;
