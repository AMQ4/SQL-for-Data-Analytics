\c sqlda
SELECT
    customers.*,
    products.*,
    COALESCE(sales.dealership_id, -1) AS dealership_id,
    CASE
        WHEN sales.sales_amount + 500 <= products.base_msrp THEN 1
        ELSE 0
    END AS high_savings
FROM sales
INNER JOIN customers ON sales.customer_id = customers.customer_id
INNER JOIN products ON sales.product_id = products.product_id
LEFT JOIN dealerships ON sales.dealership_id = dealerships.dealership_id;
