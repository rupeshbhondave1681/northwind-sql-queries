/*Query6:Get the customers who have placed more than 10 orders
  
  Query Description:In this query i have counts the number of orders for each customer by grouping the results 
  based on "customer_id" The "HAVING" clause filters the results and only includes customers 
  whose order count is greater than 10.
*/

SELECT customer_id , COUNT(*) AS OrderCount
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 10;