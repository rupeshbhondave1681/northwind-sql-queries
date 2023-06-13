/*
Query11:Calculate the average product price by category.
Query Description:In this query, I hvae join the "products" table with the "categories" table 
using the "category_id" column. The AVG() function calculates the average of the "Unit_Price" column. 
By grouping the results by the "Category_id,Category_name we can get the average product price for each category.
*/

SELECT categories.category_id, category_name,
avg(unit_price) AS AVERAGE_PRICE
FROM products 
JOIN categories  ON products.category_id = categories.category_id
GROUP BY categories.category_id, categories.category_name;
