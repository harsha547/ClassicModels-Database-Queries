-- 13. Report the name and city of customers who don't have sales representatives ?

select customerName,city
from customers
where  salesRepEmployeeNumber is null ;