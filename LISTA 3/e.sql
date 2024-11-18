-- e. O nome do fornecedor, o fone do fornecedor, o nome do produto, o preço e o
-- preço total do produto no estoque para produtos que comecem com a letra S,
-- tendo preço acima de 50, ordenado por fornecedor e preço;

SELECT 
	NMSUPPLIER AS supplier_name, 
	IDFONE AS supplier_phone, 
	NMPRODUCT AS product_name, 
	VLPRICE AS price_value,
CASE 
	WHEN NMPRODUCT LIKE 'S%' THEN (QTSTOCK*VLPRICE)
	ELSE NULL
END AS total_stock_price
FROM PRODUCT AS P 
JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER
JOIN PRODUCTREQUEST AS PR ON P.CDPRODUCT = PR.CDPRODUCT