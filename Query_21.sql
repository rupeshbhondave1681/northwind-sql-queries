/*
Query21:Get the list of customers who have ordered ‘Chai’ product.
Query Description:In this query,I have join the "Customers," "Orders," "Order_details," 
and "Products" tables using their respective IDs.  then use the WHERE clause to filter
the results based on the condition products.product_name = 'Chai', which selected only the orders for the 'Chai' product.
*/

SELECT customers.customer_id,customers.contact_name AS CUSTOMER_NAME
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_details ON Orders.order_id = order_details.order_id
JOIN Products ON order_details.product_id = products.product_id
WHERE Products.product_name = 'Chai';
