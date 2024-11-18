-- b. O nome do produto, o nome do fornecedor, o preço do produto, o preço total
--do produto no estoque e o preço total para o dobro do estoque para produtos
--com preço total acima de 12000, ordenados por fornecedor e produto;

SELECT
	NMPRODUCT AS product_name, 
	NMSUPPLIER AS supplier_name, 
	VLPRICE AS price_value, 
	VLPRICE * QTSTOCK AS stock_price,
CASE 
	WHEN VLPRICE*QTSTOCK > 12000 THEN VLPRICE*(QTSTOCK*2)
	ELSE NULL
	END AS price_for_double_stock
FROM PRODUCT AS P
JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER
ORDER BY NMSUPPLIER, NMPRODUCT;