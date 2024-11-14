-- b. O nome do fornecedor, e o número de produtos que ele fornece, mesmo que
-- não tenha fornecido produto algum;

SELECT NMSUPPLIER, COUNT(NMPRODUCT) 
FROM SUPPLIER 
LEFT JOIN PRODUCT ON PRODUCT.CDSUPPLIER = SUPPLIER.CDSUPPLIER 
GROUP BY NMSUPPLIER;