-- 9.List the value of 'On Hold' orders.

SELECT DISTINCT(orders.orderNumber), products.productName
FROM orders
JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
JOIN products ON orderdetails.productCode = products.productCode
WHERE orders.status = 'On Hold';