/*
Query36:Classify customers based on their total order amounts such that total order amounts > 5000 
        should be classified as ‘High Value’, if > 1000 then as ‘Medium Value’ and otherwise as ‘Low Value’.
Query Description:This query calculates the total order amount for each customer by joining the "Customers" "Orders"
  and "Order_details" tables. The CASE statement classifies customers based on their total order amounts, with 
  set at 5000 for 'High Value' and 1000 for 'Medium Value'. The GROUP BY clause groups the results
  by the customer_id.

*/

SELECT customers.customer_id,SUM(freight)AS TOTAL_AMOUNT,
    CASE
        WHEN SUM(orders.freight) > 5000 THEN 'High Value'
        WHEN SUM(orders.freight) > 1000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS Classification
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_details  ON orders.order_id = order_details.order_id
GROUP BY customers.customer_id
