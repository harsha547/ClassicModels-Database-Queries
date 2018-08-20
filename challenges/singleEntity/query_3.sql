-- what is the total of payments received.

SELECT sum(payments.amount) As 'Total Payments'
FROM
payments
