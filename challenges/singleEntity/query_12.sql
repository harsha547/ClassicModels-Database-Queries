-- 12. How many distinct products does classicmodels sell >

SELECT count(distinct productName) As 'Distinct Product'
from products