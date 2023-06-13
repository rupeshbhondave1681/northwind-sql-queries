/*Query2:Get the total quantity of each product sold.

  Query Description: In this query, I have select the product_id column from the OrderDetails table.
          use the SUM() function to calculate the total quantity sold by summing the quantity column.
          then i have use the GROUP BY clause to group the results by the product_id.
*/
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM Order_details
GROUP BY product_id;
