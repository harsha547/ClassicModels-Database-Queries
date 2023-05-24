-- 3. List the names of customers and their corresponding order number where a particular order from that customer has a value greater than $25,000.

SELECT customers.customerName, orders.orderNumber, SUM(orderdetails.priceEach * orderdetails.quantityOrdered) AS tot_value
FROM customers
JOIN orders ON customers.customerNumber = orders.customerNumber
JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
GROUP BY customers.customerName, orders.orderNumber
HAVING tot_value > 25000
ORDER BY customers.customerName;