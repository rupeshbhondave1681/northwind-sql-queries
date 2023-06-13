/*
Query20:List the top 5 employees who have processed the most orders.
Query Description:In this query, I have join the "employees" and "orders" tables using the
 "employee_id" column. The COUNT() function is used to calculate the number of orders for
  each employee. The result is grouped by the employee_id. The ORDER BY clause 
  sorts the result in descending order based on the order count. Finally, the LIMIT 5 clause
  is used to get only the top 5 employees with the highest order count.
*/

SELECT employees.employee_id,first_name,last_name, COUNT(orders.order_id) AS OrderCount
FROM employees 
JOIN orders  ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id
ORDER BY Ordercount DESC
LIMIT 5