-- 4. For orders containing more than two products, report
-- those products that constitute more than 50% of the value of the order.

SELECT orderNumber, productName,  ProductsCount ,contribution
FROM
     (
      SELECT  orderNumber,
              productCode,
              (SELECT Count(*) FROM orderdetails WHERE OrderNumber = Main.orderNumber) As 'ProductsCount',
              quantityOrdered*priceEach As 'Product Value',
              (quantityOrdered*priceEach / (
                                           SELECT SUM(quantityOrdered*priceEach)
                                           FROM orderdetails
                                           WHERE orderNumber = Main.orderNumber ))*100
                                        As 'Contribution'
      FROM orderdetails Main
      ORDER BY  orderNumber
      )  DataTable
INNER JOIN
Products
ON Products.productCode = DataTable.productCode
WHERE ProductsCount > 2 AND Contribution > 50



