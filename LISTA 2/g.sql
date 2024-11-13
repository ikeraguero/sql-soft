--  O nome do produto, o nome do fornecedor e o telefone do fornecedor dos
-- produtos com preço acima de 20 reais e que tenham mais de 1500 unidades
-- em estoque;

SELECT NMPRODUCT, NMSUPPLIER, IDFONE 
FROM PRODUCT
JOIN SUPPLIER ON PRODUCT.CDSUPPLIER = SUPPLIER.CDSUPPLIER
WHERE VLPRICE > 20 
AND QTSTOCK > 1500;