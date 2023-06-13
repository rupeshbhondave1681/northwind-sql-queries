/*
Query29:Find the month in the year 2016 with the highest total sales.
Query Description:In this query join the "Orders" and "Order_details" tables based on the order_id.
 The WHERE clause filters the results to include only orders from the year 2016. 
 then group the results by the month of the order date using the MONTH() function. 
 The SUM() function is used to calculate the total sales for each month. 
 The ORDER BY clause sorts the result in descending order based on the total sales.
 and last the LIMIT 1 clause is used to retrieve only the top result, which represents the month with the highest total sales.

*/

SELECT MONTH(order_date) AS SalesMonth, SUM(freight) AS TotalSales
FROM orders 
JOIN order_details ON orders.order_id = order_details.order_id
WHERE YEAR(order_date) = 2016
GROUP BY MONTH(order_date)
ORDER BY TotalSales DESC
LIMIT 1;
