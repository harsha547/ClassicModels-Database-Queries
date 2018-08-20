
-- Question : Prepare a list of offices sorted by country,state,city

-- use backticks while referencing fieldnames in MySql

SELECT `territory` as 'Office Location'
FROM offices
ORDER BY `country`, `state`, `city`
