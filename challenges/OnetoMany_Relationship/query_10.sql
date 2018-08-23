-- 10. Report the number of orders 'On Hold' for each customer.

SELECT customerName , count(*) As 'Orders on Hold'
FROM customers
INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE orders.status = 'On Hold'
GROUP BY customerName;