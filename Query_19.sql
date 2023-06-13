/*
Query19:Find the customers who have spent more than $5000 in total.
Query Description:In this query, I have join the "Customers" and "Orders" tables using the "customer_id" column.
The GROUP BY clause groups the orders by the customer ID and customer name.
The HAVING clause filters the groups based on the condition SUM(Orders.freight) > 5000, 
selected only those customers whose total amount of orders is greater than $5000.
*/

SELECT customers.customer_id,customers.contact_name as Customer_Name
FROM Customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id,customers.contact_name
HAVING SUM(Orders.freight) > 5000;
