/*
Query14:Find the most expensive product in each category.
Query Description:In this query, the subquery (SELECT CategoryID, MAX(Price) AS MaxPrice
 FROM Products GROUP BY CategoryID) calculates the maximum price for each category. 
 It groups the products by category and write the maximum price within each group.
 The result is then joined with the "Categories" and "Products" tables based on the matching
 category ID and unit_price to obtain the most expensive product in each category.
*/

SELECT categories.category_id,category_name, products.product_id, unit_price,product_name
FROM categories 
JOIN products  ON products.category_id = categories.category_id
JOIN 
(
    SELECT category_id, MAX(unit_price) AS MaxPrice
    FROM Products
    GROUP BY category_id
) AS MaxPrices ON products.category_id = MaxPrices.category_id AND products.unit_price = MaxPrices.MaxPrice;
