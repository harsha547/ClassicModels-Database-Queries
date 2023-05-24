-- 1. List products sold by order date.

SELECT productName , orderDate , DAYNAME(orderDate) As 'DayName'
FROM products
INNER JOIN orderdetails
ON products.productCode = orderdetails.productCode
INNER JOIN Orders
ON orderdetails.orderNumber = orders.orderNumber
WHERE DAYNAME(Orders.orderDate) = 'MONDAY';