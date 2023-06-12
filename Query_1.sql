/*Query1:Get the total number of orders placed by each customer

  Schema Description:In this query, I have select the customer_id column from the Orders table 
  and use the COUNT(*) function to calculate the total number of orders for each customer.
  then use the GROUP BY clause to group the results by the customer_id.
*/

SELECT customer_id, COUNT(*) AS total_orders
FROM Orders
GROUP BY customer_id;


