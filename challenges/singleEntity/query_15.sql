-- 15. which orders have a value greater than $5,000

SELECT orderNumber,sum(priceEach*quantityOrdered)
from orderdetails
group by orderNumber
having sum(priceEach*quantityOrdered) > 5000
order by sum(priceEach*quantityOrdered);
