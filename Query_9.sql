/*Query9:Find the customers who have not placed any orders.

Query Description:In this query, I have  join the "Customers" table with the "Orders" table using 
the "customer_id" column. The LEFT JOIN ensures that all rows from the "Customers" table are included 
in the result.and WHERE clause filters out the rows where the "order_id" is NULL, indicating that there are no matching orders for those customers.
*/

select customers.customer_id,contact_name as Customer_name
from customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL;