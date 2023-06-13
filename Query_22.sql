/*
Query22:Get the employees who have processed orders for ‘Chai’ product.
Query Description: In this query, I have  join the "employees," "orders," "Order_details," and "products"
 tables using their respective IDs. The WHERE clause is used to filter the results based on the 
 condition products.product-name = 'Chai', for ensuring that only orders for the 'Chai' product are included in the result.

*/

SELECT 	employees.employee_id,last_name,first_name
FROM 	employees
JOIN orders ON 	employees.	employee_id = orders.employee_id
JOIN order_details ON Orders.order_id = order_details.order_id
JOIN Products ON order_details.product_id = products.product_id
WHERE Products.product_name = 'Chai';