/*
Query32:Find the employees who have not processed any orders
Query Description:In this query I have use a LEFT JOIN operation to combine the "employees" table with
 the "Orders" table based on the employee_id. The WHERE clause filters the result to only include rows 
 where the employee_id in the "Orders" table is NULL, indicating that the employee has not processed any orders
*/

SELECT employees.employee_id
FROM employees 
LEFT JOIN orders ON employees.employee_id = orders.employee_id
WHERE orders.employee_id IS NULL;
