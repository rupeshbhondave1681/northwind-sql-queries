/*
Query13:List all orders shipped to ‘Germany’.
Query Description:In this query, I have join the "Orders" table with the "Customers" table 
using the "customer_id" column. The WHERE clause is used to filter the results based 
on the condition Customers.Country = 'Germany',Therefor only orders shipped in germany will be displayed.
*/

SELECT orders.order_id,  customers.country
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
WHERE customers.country = 'Germany';