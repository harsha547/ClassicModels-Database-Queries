-- 7. List the products ordered on a Monday.

SELECT productName , orderDate , DAYNAME(orderDate) As 'DayName'
FROM products
INNER JOIN orderdetails
ON products.productCode = orderdetails.productCode
INNER JOIN Orders
ON orderdetails.orderNumber = orders.orderNumber
WHERE DAYNAME(Orders.orderDate) = 'MONDAY'