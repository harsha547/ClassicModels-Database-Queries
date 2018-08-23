-- 2. List products ending in 'ship'.

SELECT productName
FROM products
WHERE productName LIKE '%ship'
