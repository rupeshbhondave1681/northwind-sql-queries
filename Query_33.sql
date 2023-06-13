/*
Query33:Find the suppliers who supply the top 5 most sold products.
Query Description: In these Query use a subquery to calculate the total quantity of 
products sold by each supplier. The subquery joins the "products" and "Order_details" tables based
on the product_id  and calculates the sum of quantities for each supplier. The outer query selects 
the supplier ID and supplier name from the "Suppliers" table, filtering only the suppliers whose 
id's are present in the top 5 results of the subquery.
*/

SELECT suppliers.supplier_id, suppliers.contact_name as supplier_Name
FROM suppliers 
WHERE suppliers.supplier_id IN 
(
  SELECT products.supplier_id
  FROM products 
  JOIN order_details ON products.product_id = order_details.product_id
  GROUP BY products.supplier_id
  ORDER BY SUM(order_details.quantity) DESC
  LIMIT 5
);
