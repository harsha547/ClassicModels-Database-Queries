-- 2. Find products containing the name 'Ford'.

SELECT productName As 'Products'
FROM Products
WHERE productName LIKE '%Ford%'