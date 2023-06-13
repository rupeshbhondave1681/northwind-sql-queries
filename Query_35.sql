/*
Query35:Find the total sales for each year.
Query Description:In this query I have join the "Orders" and "Order_details" tables based on the order_id.
 The GROUP BY clause groups the results by the year of the order date using the YEAR() function.
 The SUM(freight) function calculates the total sales for each year. 
 The ORDER BY clause sorts the result by the sales year in ascending order.
*/

SELECT YEAR(order_date) AS SalesYear, SUM(freight) AS TotalSales
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY YEAR(order_date)
ORDER BY SalesYear;
