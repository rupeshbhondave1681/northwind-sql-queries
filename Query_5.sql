/*Query5:List the employees and the number of orders each employee has taken.

Query Description:In this query firstly i have select employee_id,last_name and first_name from employee table and count orders for each employee by using orders table 
Then use LEFT JOIN to combine the "Employees" and "Orders" tables based on the matching "EmployeeID" column. 
then group by is used for  "employee_id","last_name"and "first_name" to provide a distinct count for each employee
*/

SELECT employees.employee_id,last_name,first_name,  COUNT(orders.order_id) AS Order_Count
FROM employees
LEFT JOIN orders  ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id,last_name,first_name;