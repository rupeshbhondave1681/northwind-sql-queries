/*
Query26:Find the customer who has ordered the most ‘Chai’ product.
Query Description:In this query, I have join the "customers," "orders," "order_details," and "products" tables
using their respective IDs. The WHERE clause is used to filter the results based on the
condition product.product_name= 'Chai', ensuring that only orders for the 'Chai' product are included in the result.
The SUM() function is used to calculate the total quantity of 'Chai' products ordered by each customer.
The GROUP BY clause groups the results customer_id and customer name. The ORDER BY clause sorts the
result in descending order based on the total quantity. and in last the LIMIT 1 clause is used to retrieve
only the top result, which represents the customer who has ordered the most 'Chai' product
*/

SELECT customers.customer_id,contact_name, SUM(order_details.quantity) AS TotalQuantity
FROM customers 
JOIN orders  ON customers.customer_id = orders.customer_id
JOIN order_details  ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id= products.product_id
WHERE products.product_name = 'Chai'
GROUP BY customers.customer_id, customers.contact_name
ORDER BY TotalQuantity DESC
LIMIT 1;
