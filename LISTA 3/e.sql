-- e. O nome do fornecedor, o fone do fornecedor, o nome do produto, o preço e o
-- preço total do produto no estoque para produtos que comecem com a letra S,
-- tendo preço acima de 50, ordenado por fornecedor e preço;

SELECT NMSUPPLIER, IDFONE, NMPRODUCT, VLPRICE,
CASE 
	WHEN NMPRODUCT LIKE 'S%' THEN (QTSTOCK*VLPRICE)
	ELSE NULL
END AS 'TOTAL STOCK PRICE'
FROM PRODUCT JOIN SUPPLIER ON PRODUCT.CDSUPPLIER = SUPPLIER.CDSUPPLIER
JOIN PRODUCTREQUEST ON PRODUCT.CDPRODUCT = PRODUCTREQUEST.CDPRODUCT
