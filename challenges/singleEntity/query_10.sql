-- 10. list all the payments greater than twice the average amount ?

SELECT *
FROM payments
WHERE amount > 2 * (SELECT AVG(amount) FROM payments);