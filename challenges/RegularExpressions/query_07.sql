-- 7. List the products containing ship or boat in their product name.

SELECT productName
FROM Products
WHERE productName RLIKE 'ship|boat';