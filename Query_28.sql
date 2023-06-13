/*
Query28:Find the top 3 most popular categories of products ordered
Query Description:In this query I have join the "Order_details," "products," and "categories" tables
 based on their respective IDs. The GROUP BY clause groups the results by the category ID and category name. 
 The COUNT(*) function is used to calculate the number of orders for each category. The ORDER BY clause sorts
 the result in descending order based on the order count. and the LIMIT 3 clause is used to retrieve only
 the top 3 categories with the highest order count.

*/

SELECT categories.category_id, categories.category_name, COUNT(*) AS OrderCount
FROM order_details
JOIN products ON order_details.product_id = products.product_id
JOIN categories  ON products.category_id = categories.category_id
GROUP BY categories.category_id, categories.category_name
ORDER BY OrderCount DESC
LIMIT 3;