/*
Query27:Find the average quantity of products ordered in each order.
Query Description:In this query I have select the order ID and calculate the average quantity 
of products using the AVG() function. The result is grouped by the order ID using the GROUP
BY clause, which gives the average quantity for each order.
*/

SELECT order_id, AVG(quantity) AS AverageQuantity
FROM order_details
GROUP BY order_id;