/*
Query31:Find the top 3 customers who have ordered the most products.
Query Description:In this query join the "customers" "orders" and "order_details" tables based on their respective IDs. 
The GROUP BY clause groups the results by the customee_id and customer_name. 
The SUM(order_details.quantity) function calculates the total quantity of products ordered by each customer.
The ORDER BY clause sorts the result in descending order based on the total quantity.
then the LIMIT 3 clause is used to get only the top 3 customers with the highest total quantity of products ordered.
*/
SELECT customers.customer_id, customers.contact_name AS Customer_name, SUM(order_details.quantity) AS TotalQuantity
FROM customers 
JOIN orders  ON customers.customer_id = orders.customer_id
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY customers.customer_id, customers.contact_name
ORDER BY TotalQuantity DESC
LIMIT 3;