/*
Query23:Find the most common shipping country.
Query Description:In this query I have join the "customers" and "orders" tables using the customer_id.
 The GROUP BY clause groups the orders by the country. The COUNT(*) function is used to calculate 
 the frequency of each country. The ORDER BY clause sorts the result in descending order based on the frequency.
 Finally the LIMIT 1 clause is used to get only the top result, which represents the most common shipping country.
*/

SELECT country, COUNT(*) AS Frequency
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY country
ORDER BY Frequency DESC
LIMIT 1;