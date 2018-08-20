-- 5. Report total payments for october 28,2004

SELECT sum(amount) As 'Amount for 28th oct 2004'
from payments
WHERE paymentDate = '2004-10-28'