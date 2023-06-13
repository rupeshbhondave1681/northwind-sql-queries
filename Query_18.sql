/*
Query18:Find all employees who report to ‘Andrew Fuller’.
Query Description:In this query, the self-join is performed by joining the "Employees" 
table with itself using the "reports_to" column. By matching the "reports_to" column of
 one instance (E) with the "employee_id" of another instance (AF), i have finded the employees who report to Andrew Fuller.
*/

SELECT E.employee_id, E.last_name,e.first_name
FROM Employees E
JOIN Employees AF ON E.reports_to = AF.employee_id
WHERE AF.first_name = 'Andrew';
