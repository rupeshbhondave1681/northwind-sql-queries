/*
Query34:Find the customers who have ordered products from all categories.

Query Description;Here join the "Customers," "Orders," "Order_details," and "products" tables 
based on their respective IDs. The subquery (SELECT DISTINCT Product_id FROM products) retrieves all distinct
product IDs from the "Products" table. then group the results by the customer_id  
The HAVING clause ensures that the count of distinct product IDs ordered by each customer is equal to the 
total count of distinct product IDs available in the "Products" table.

*/

SELECT customers.customer_id
FROM customers 
JOIN orders  ON customers.customer_id= orders.customer_id
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY customers.customer_id
HAVING COUNT
(DISTINCT order_details.product_id) = (SELECT COUNT(DISTINCT product_id)
FROM products
);
