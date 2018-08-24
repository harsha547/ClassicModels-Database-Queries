-- 3. Report the number of customers in Denmark, Norway, and Sweden.

SELECT customerName
FROM Customers
WHERE country IN ('Denmark','Norway','Sweden');