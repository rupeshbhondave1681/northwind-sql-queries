/*
Query30:Find the employee who processed the most orders in August 2016.
Query Description:In this query join the "employees," "orders," and "Order_details" tables 
based on their respective IDs. The WHERE clause filters the results to include only orders from August 2016. 
then group the results by the employee ID and employee last and first name.
The COUNT(*) function is used to calculate the number of orders processed by each employee. 
The ORDER BY clause sorts the result in descending order based on the order count.
then the LIMIT 1 clause is used to get only the top result, which represents the 
employee who processed the most orders in August 2016.
*/

SELECT employees.employee_id, employees.last_name,employees.first_name, COUNT(*) AS OrderCount
FROM employees 
JOIN orders ON employees.employee_id = orders.employee_id
JOIN order_details ON orders.order_id = order_details.order_id
WHERE MONTH(orders.order_date) = 8 AND YEAR(orders.order_date) = 2016
GROUP BY employees.employee_id,employees.last_name,employees.first_name
ORDER BY OrderCount DESC
LIMIT 1;
