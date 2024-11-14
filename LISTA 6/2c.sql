-- c. O nome do fornecedor, seu telefone, o nome do produto, seu preço e a
-- quantidade em estoque, o fornecedor deve aparecer mesmo que não tenha
-- nenhum produto

SELECT NMSUPPLIER, IDFONE, NMPRODUCT, VLPRICE, QTSTOCK 
FROM PRODUCT 
RIGHT JOIN SUPPLIER ON PRODUCT.CDSUPPLIER = SUPPLIER.CDSUPPLIER;