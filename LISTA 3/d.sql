-- d. O nome do produto, o preço e o nome do fornecedor dos produtos que o
-- fornecedor tenha no nome os caracteres ‘ica’, ordenado por fornecedor e
-- preço;

SELECT 
	NMPRODUCT AS product_name, 
	VLPRICE AS price_value, 
	NMSUPPLIER AS supplier_value 
FROM PRODUCT AS P 
JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER 
WHERE NMSUPPLIER LIKE '%ica%';