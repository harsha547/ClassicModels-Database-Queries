-- 11. what is the average percentage markup of the MSRP on buyPrice ?

select AVG((MSRP-buyPrice)/MSRP)*100 AS 'Average Percentage Markup'
from products;