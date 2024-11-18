-- g. O nome do produto, o nome do fornecedor e o telefone do fornecedor dos
-- produtos com preço acima de 20 reais e que tenham mais de 1500 unidades
-- em estoque;

SELECT 
    NMPRODUCT AS product_name, 
    NMSUPPLIER AS supplier_name, 
    IDFONE AS supplier_phone 
FROM PRODUCT AS P
JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER
WHERE VLPRICE > 20 
AND QTSTOCK > 1500;