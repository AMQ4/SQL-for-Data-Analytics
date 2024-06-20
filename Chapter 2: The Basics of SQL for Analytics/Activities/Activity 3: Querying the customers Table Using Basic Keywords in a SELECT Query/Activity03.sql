-- 1
\c sqlda
\d customers

-- 2

SELECT email
FROM public.customers
WHERE state = 'FL'
ORDER BY
email ASC;

-- 3
SELECT first_name, last_name, email
FROM public.customers
WHERE (city = 'New York City' AND state = 'NY')
ORDER BY
last_name ASC, last_name ASC;

-- 4
SELECT *
FROM public.customers
WHERE phone IS NOT NULL
ORDER BY
date_added ASC;
