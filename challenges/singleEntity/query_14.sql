-- 14. what are the names of executives with VP or Manager in their title ? Use
-- the CONCAT function to combine the employees firstname and lastname
-- into a single field for reporting ?

SELECT concat(firstName, ' ',lastName) As 'Full Name'
FROM employees
WHERE jobTitle LIKE '%VP%' OR jobTitle LIKE '%Manager%';
