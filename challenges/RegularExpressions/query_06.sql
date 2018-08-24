-- 6 . List the names of employees called Dianne or Diane.

SELECT CONCAT(firstName,' ',lastName) AS 'Employee Name'
FROM Employees
WHERE lastName RLIKE 'Dianne|Diane'OR
      firstName RLIKE 'Dianne|Diane'