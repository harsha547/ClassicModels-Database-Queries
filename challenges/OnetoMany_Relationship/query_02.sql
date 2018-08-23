-- 2.Report total payments for Atelier graphique.

SELECT c.customerName,sum(payments.amount)
FROM payments
INNER JOIN customers c on payments.customerNumber = c.customerNumber
WHERE c.customerName = 'Atelier graphique'
GROUP BY c.customerName