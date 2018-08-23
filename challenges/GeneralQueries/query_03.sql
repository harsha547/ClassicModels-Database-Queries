-- 3. List all the products purchased by Herkku Gifts.

SELECT productName
FROM products
INNER JOIN orderdetails od on products.productCode = od.productCode
INNER JOIN orders o on od.orderNumber = o.orderNumber
INNER JOIN customers c on o.customerNumber = c.customerNumber
WHERE c.customerName = 'Herkku Gifts';