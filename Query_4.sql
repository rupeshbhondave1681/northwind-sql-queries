/*Query4:Find the total sales (Quantity*Unit_Price) for each category of products.
 
Query Description:In this query i have used  query to  joins the "Products" table with the "Categories" table based on the matching "CategoryID" column.
           It then calculates the total sales for each category by multiplying the quantity
           and unit price for each product and summing the results. Then result is grouped by "CategoryID" and "CategoryName" 
           to give the total sales for each category.
*/

SELECT categories.category_id, category_name, sum (products.units_on_order * products.unit_price) AS Total_Sales
FROM products 
JOIN categories  ON products.category_id = categories.category_id
GROUP BY categories.category_id, categories.category_name;