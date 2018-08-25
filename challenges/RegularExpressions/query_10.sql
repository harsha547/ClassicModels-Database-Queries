-- 10. List the names of employees with non-alphabetic characters in their names.

SELECT CONCAT(Employees.lastName,' ',Employees.firstName) As 'Employee Name'
FROM Employees
WHERE CONCAT(Employees.lastName,' ',Employees.firstName)  RLIKE '[0-9%@]'