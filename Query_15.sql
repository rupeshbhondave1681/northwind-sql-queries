/*
Query15:Find the total revenue for the year 2016.
Query Description:In this query, the WHERE clause filters the orders based on the year of
the "Order_date" column, specifically for the year 2016. The SUM() function is used to calculate
the total revenue for the selected orders.
*/

SELECT  sum(freight) AS Total_Revenue2016
FROM orders
WHERE YEAR(order_date)=2016;