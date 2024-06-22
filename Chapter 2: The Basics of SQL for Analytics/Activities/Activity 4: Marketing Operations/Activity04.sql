\c sqlda

-- 1
CREATE TABLE customers_nyc AS (
	SELECT *
	FROM customers
	WHERE
	(city = 'New York City' AND state = 'NY')
);

-- 2
DELETE FROM customers_nyc
WHERE postal_code = '10014';

-- 3
ALTER TABLE customers_nyc
ADD COLUMN event TEXT;

-- 4
UPDATE customers_nyc
SET event = 'thank-you party';
