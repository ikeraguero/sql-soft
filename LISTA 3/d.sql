-- d. O nome do produto, o preço e o nome do fornecedor dos produtos que o
-- fornecedor tenha no nome os caracteres ‘ica’, ordenado por fornecedor e
-- preço;

SELECT NMPRODUCT, VLPRICE, NMSUPPLIER FROM PRODUCT JOIN SUPPLIER
ON PRODUCT.CDSUPPLIER = SUPPLIER.CDSUPPLIER WHERE NMSUPPLIER LIKE '%ica%';