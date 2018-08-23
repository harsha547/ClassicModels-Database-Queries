-- 4. Report the products that have not been sold.

SELECT * from products
where not exists ( SELECT * FROM orderdetails
                   WHERE products.productCode = orderdetails.productCode )