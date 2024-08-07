SELECT customer_id, first_name, last_name,
    CASE
        WHEN state IN ('MA', 'NH', 'VT', 'ME', 'CT', 'RI') THEN 'New England'
        WHEN state IN ('GA', 'FL', 'MS', 'AL', 'LA', 'KY', 'VA', 'NC', 'SC', 'TN', 'VI', 'WV', 'AR') THEN 'Southeast'
        ELSE 'Other'
    END AS region
FROM customers;
