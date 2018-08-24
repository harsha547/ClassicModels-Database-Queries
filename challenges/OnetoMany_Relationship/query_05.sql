-- 5.List the amount paid by each customer.

SELECT Orders.customerNumber, customerName , ROUND(SUM(Detail.quantityOrdered*Detail.priceEach),2) As 'Amount Paid'
FROM Customers
INNER JOIN Orders
ON Customers.customerNumber = Orders.customerNumber
INNER JOIN OrderDetails Detail
on Orders.orderNumber = Detail.orderNumber
GROUP BY Orders.customerNumber,customerName
ORDER BY SUM(Detail.quantityOrdered*Detail.priceEach) DESC