-- 7.Who are the employees in Boston?

-- Two possible solutions, one using JOIN, the other one using a SUBQUERY.

-- JOIN solution
SELECT CONCAT(employees.lastName, " ", employees.firstName) AS employees_name, offices.city
FROM employees
JOIN offices ON employees.officeCode = offices.officeCode
WHERE offices.city = 'Boston';

-- SUBQUERY solution
SELECT CONCAT(employees.lastName, " ", employees.firstName) AS employees_name
FROM employees
WHERE employees.officeCode IN (SELECT offices.officeCode
FROM offices
WHERE city = 'Boston');