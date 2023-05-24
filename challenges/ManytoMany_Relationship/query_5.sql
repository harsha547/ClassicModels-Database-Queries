-- 5. List the names of products sold at less than 80% of the MSRP.

SELECT distinct products.productName, products.MSRP
FROM products
JOIN orderdetails ON products.productCode = orderdetails.productCode
WHERE orderdetails.priceEach < (0.8*products.MSRP)
ORDER BY products.MSRP DESC;