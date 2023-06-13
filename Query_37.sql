/*
Query37:Classify products based on their sales volume such that TotalQuantity > 1000 Then SalesCategory as
        ‘High Sales’. If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’.
Query Description:In this query, I have join the "products" and "Order_details" tables based on the product_id.
 The GROUP BY clause groups the results by the product_id and product_name. 
 The CASE statement is used to classify products based on their total sales volume.
 Products with a total quantity sold greater than 1000 are classified as 'High Sales', products with a total 
 quantity sold greater than 500 are classified as 'Medium Sales', and the remaining products are classified as 'Lower Sales'.

*/

SELECT  products.product_name,sum(quantity)as total_quantity,
    CASE
        WHEN SUM(order_details.unit_price) > 1000 THEN 'High Sales'
        WHEN SUM(order_details.quantity) > 500 THEN 'Medium Sales'
        ELSE 'Lower Sales'
    END AS SalesCategory
FROM products
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_id, products.product_name;
