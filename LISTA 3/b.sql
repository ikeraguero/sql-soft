-- b. O nome do produto, o nome do fornecedor, o preço do produto, o preço total
--do produto no estoque e o preço total para o dobro do estoque para produtos
--com preço total acima de 12000, ordenados por fornecedor e produto;

SELECT NMPRODUCT, NMSUPPLIER, VLPRICE, VLPRICE * QTSTOCK AS 'STOCK PRICE',
CASE 
	WHEN VLPRICE*QTSTOCK > 12000 THEN VLPRICE*(QTSTOCK*2)
	ELSE NULL
	END AS 'PRICE FOR DOUBLED STOCK'
FROM PRODUCT JOIN SUPPLIER ON PRODUCT.CDSUPPLIER = SUPPLIER.CDSUPPLIER
ORDER BY NMSUPPLIER, NMPRODUCT;