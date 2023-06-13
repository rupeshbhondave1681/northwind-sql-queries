/*
Query8:Find the products that have never been ordered
Query Description:In This query i have selects all products from the "products" table where the product_id is not present in the subquery.
 The subquery selects the distinct product_ids from the "order_details" table.
 By checking for products that are not present in the "order_details" table,
 then we can identify the products that have never been ordered.
*/

SELECT *
FROM products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id
    FROM order_details
);