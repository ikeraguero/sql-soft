-- c. O nome do fornecedor, o total em estoque dos produtos fornecidos pelo
-- fornecedor, a média de preço dos produtos fornecidos e quantos produtos ele
-- fornece;

SELECT 
	NMSUPPLIER AS supplier_name, 
	SUM(QTSTOCK) AS total_in_stock, 
	COUNT(*) AS total_products, 
	SUM(VLPRICE) / COUNT(*) AS price_average
FROM PRODUCT AS P
JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER 
GROUP BY NMSUPPLIER;
