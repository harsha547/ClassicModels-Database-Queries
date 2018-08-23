
--3. Report the total payments by Date

SELECT paymentDate,sum(amount) As 'Amount'
FROM payments
GROUP BY paymentDate