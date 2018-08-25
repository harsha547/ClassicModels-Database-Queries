-- 8. List the products with a product code beginning with S700.

SELECT  productCode, productName
FROM Products
WHERE productCode LIKE 'S700%';