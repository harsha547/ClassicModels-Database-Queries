-- 2. List the order dates in descending order for orders for the 1940 Ford Pickup Truck.

SELECT DISTINCT(products.productName), orders.orderDate
FROM orders
JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
JOIN products ON orderdetails.productCode = products.productCode
WHERE productName = '1940 Ford Pickup Truck'
ORDER BY orderDate DESC;