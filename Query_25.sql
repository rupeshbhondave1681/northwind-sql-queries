/*
Query25:Find the employees who have processed more than 100 orders.
Query Description:In this query, I have join the "employees" and "orders" tables using the "employee_id" column.
 The GROUP BY clause groups the orders by the employee ID . The HAVING clause is used to 
 filter the groups based on the condition COUNT(Orders.order_id) > 100, selecting only those employees who have 
 processed more than 100 orders.
*/

SELECT employees.employee_id, last_name,first_name,COUNT(orders.order_id) as NO_OF_ORDERS
FROM employees
JOIN orders  ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id
HAVING COUNT(orders.order_id) > 100;
