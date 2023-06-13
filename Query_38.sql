/*
Query38:. Classify employees based on the number of orders they have processed such that
          NumberOfOrders > 100 Then PerformanceCategory as ‘High Performing’.
          If NumberOfOrders>50 Then ‘Medium Performing’ and else ‘Lower Performing’
Query Description:In this query i have use a LEFT JOIN to include all employees, even if they haven't processed any orders.
 The GROUP BY clause groups the results by the employee_id.
 The CASE statement classifies employees based on the count of orders they have processed.
 Employees with a count greater than 100 are classified as 'High Performing', employees with a count 
 greater than 50 are classified as 'Medium Performing', and the remaining employees are classified as 'Lower Performing'.
 The HAVING clause is used to filter out employees who haven't processed any orders.
 also include COUNT(orders.Order_id) AS NumberOfOrders in the SELECT statement to retrieve the count of orders processed by each employee. 
*/

SELECT first_name,last_name,sum(orders.order_id) AS NumberOfOrders,
    CASE
        WHEN COUNT(orders.order_id) > 100 THEN 'High Performing'
        WHEN COUNT(orders.order_id) > 50 THEN 'Medium Performing'
        ELSE 'Lower Performing'
    END AS PerformanceCategory
FROM employees 
LEFT JOIN orders  ON employees.employee_id= orders.employee_id
GROUP BY employees.employee_id
HAVING COUNT(orders.order_id) > 0;
