-- 4. List the product lines that contain cars

SELECT productLine As Cars
FROM productlines
WHERE productLine LIKE '%Car%'