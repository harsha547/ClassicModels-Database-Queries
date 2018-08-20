-- 6. Report those payments greater than $100,000

SELECT *
FROM payments
WHERE payments.amount > 100000