(
SELECT
    first_name,
    last_name,
    'customer' AS guest_type
FROM customers
WHERE city = 'Los Angeles'
AND state = 'CA'
)

UNION

(
SELECT
    first_name,
    last_name,
    'employee' AS guest_type
FROM salespeople
INNER JOIN dealerships
ON salespeople.dealership_id = dealerships.dealership_id
WHERE
dealerships.city = 'Los Angeles'
AND dealerships.state = 'CA'
);
