/*Query2:Find all suppliers who provide products in the ‘Seafood’ category

  Query Description:In this query, I have select the supplier_id and contact_name as a Suppliers_name columns from the Suppliers table.
         I have use a subquery to retrieve the supplier_id values from the categories table for products in the 'Seafood' category. 
         The outer query then filters the suppliers based on those supplier_id values using the IN operator
*/

SELECT supplier_id,contact_name AS Suppliers_Name
FROM suppliers 
WHERE supplier_id IN
 (
  SELECT supplier_id
  FROM categories
  WHERE category_name = 'Seafood'
);
