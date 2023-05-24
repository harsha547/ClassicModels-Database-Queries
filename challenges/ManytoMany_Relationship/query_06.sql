-- 6. Reports those products that have been sold with a markup of 100% or more (i.e., the priceEach is at least twice the buyPrice)

SELECT distinct products.productName, 2*(products.buyPrice) AS twice_buy_price, orderdetails.priceEach
FROM products
JOIN orderdetails ON products.productCode = orderdetails.productCode
WHERE orderdetails.priceEach > 2*products.buyPrice;