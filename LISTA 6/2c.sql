-- c. O nome do fornecedor, seu telefone, o nome do produto, seu preço e a
-- quantidade em estoque, o fornecedor deve aparecer mesmo que não tenha
-- nenhum produto

SELECT 
	NMSUPPLIER AS supplier_name, 
	IDFONE AS supplier_name, 
	NMPRODUCT AS product_name, 
	VLPRICE AS price_value, 
	QTSTOCK AS stock_quantity 
FROM PRODUCT AS P
RIGHT JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER;