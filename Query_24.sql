/*
Query24:Find the order with the highest total cost.
Query Description:In this query, the subquery (SELECT MAX(freight) FROM Orders) calculates the maximum total cost
 value from the "Orders" table. The outer query then get the order_id and total_cost that match the 
 maximum total cost value.
*/

SELECT order_id,freight as total_cost
FROM Orders
WHERE 	freight = (
    SELECT MAX(	freight)
    FROM orders
);
