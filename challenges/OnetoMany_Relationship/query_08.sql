-- 8.Report those payments greater than $100,000. Sort the report so the customer who made the highest payment appears first.

SELECT customers.customerName, SUM(amount) AS amount
FROM payments
JOIN customers ON customers.customerNumber = payments.customerNumber
WHERE amount > 100000
GROUP BY customers.customerName
ORDER BY customers.customerName DESC;