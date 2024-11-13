-- c. O nome do fornecedor, o total em estoque dos produtos fornecidos pelo
-- fornecedor, a média de preço dos produtos fornecidos e quantos produtos ele
-- fornece;

SELECT NMSUPPLIER, SUM(QTSTOCK), COUNT(*) AS 'TOTAL PRODUCTS', SUM(VLPRICE) / COUNT(*) AS 'PRICE AVERAGE'
FROM PRODUCT 
JOIN SUPPLIER ON PRODUCT.CDSUPPLIER = SUPPLIER.CDSUPPLIER 
GROUP BY NMSUPPLIER;
