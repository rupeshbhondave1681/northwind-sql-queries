/*Query7:Get the top 5 most sold products.

Query Description:In this query i have calculate the total quantity sold for each product by summing the
 "units_on_order" values from the "products" table.then groups the results by "product_name" orders them in descending order based on 
  the total quantity sold, and limits the output to the top 5 results.
*/

SELECT product_id, product_name, SUM(units_on_order) AS TotalSold
FROM products
GROUP BY product_name
ORDER BY TotalSold DESC
LIMIT 5;