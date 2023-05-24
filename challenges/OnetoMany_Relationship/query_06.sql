-- 6.How many orders have been placed by Herkku Gifts?

SELECT customers.customerName, SUM(orderdetails.quantityOrdered) AS total_orders
FROM orderdetails
JOIN orders ON orders.orderNumber = orderdetails.orderNumber
JOIN customers ON orders.customerNumber = customers.customerNumber
WHERE customers.customerName = 'Herkku Gifts'
GROUP BY customers.customerName;