-- 8. How many products in each product line

SELECT productLine,count(*) As 'Count_Of_Products'
FROM products
GROUP BY productLine
ORDER BY count(*) DESC