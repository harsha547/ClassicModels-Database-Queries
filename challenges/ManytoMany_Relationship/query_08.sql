-- 8. What is the quantity on hand for products listed on 'On Hold' orders?

SELECT DISTINCT products.productName, products.quantityInStock, orders.status
FROM orderDetails
JOIN orders ON orderDetails.orderNumber = orders.orderNumber
JOIN products ON orderDetails.productCode = products.productCode
WHERE orders.status = 'On Hold'
ORDER BY products.quantityInStock DESC;