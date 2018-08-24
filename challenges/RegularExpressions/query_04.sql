-- 4. What are the products with a product code in the range S700_1000 to S700_1499

SELECT productCode,productName
FROM Products
WHERE RIGHT(productCode,4) BETWEEN 1000 AND 1499
ORDER BY RIGHT(productCode,4)