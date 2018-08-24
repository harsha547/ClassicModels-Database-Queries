-- 5. Which customers have a digit in their name?

SELECT customerName
FROM Customers
WHERE customerName RLIKE '[0-9]'