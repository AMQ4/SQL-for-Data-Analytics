\c sqlqa

UPDATE products
SET base_msrp = base_msrp + base_msrp * 0.1
WHERE
(model = 'Model Chi' AND year = 2019);

