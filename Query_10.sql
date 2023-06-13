/*Query10:List all ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it.

Query Description:In this query, i have join the "orders" table with the "customers" table 
using the "customer_id" column, and then join the "orders" table with the "employees" table using
 the "employee_id" column. then By selected the desired columns from each table, we can retrieve the 
 order details along with the corresponding customer_id  and employee_id.
 */

SELECT orders.order_id, Customers.customer_id, employees.employee_id
FROM Orders
JOIN customers ON orders.customer_id = customers.customer_id
JOIN employees ON orders.employee_id = employees.employee_id;