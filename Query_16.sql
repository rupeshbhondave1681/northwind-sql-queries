/*
Query16:List all products that are discontinued.
Query Description:In this query, the WHERE clause filters the results to include only
the products where the "Discontinued" column has a value of 1
*/

SELECT  product_name,products.product_id,discontinued
FROM products
WHERE discontinued=1;
