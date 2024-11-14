-- f. O nome e o telefone dos fornecedores que fornecem o produto ‘leite em po”
-- ou o produto “agua mineral”;

SELECT NMSUPPLIER, NMPRODUCT, IDFONE
FROM PRODUCT JOIN SUPPLIER ON PRODUCT.CDSUPPLIER = SUPPLIER.CDSUPPLIER
WHERE NMPRODUCT LIKE 'Leite em pó' OR NMPRODUCT LIKE 'Água mineral';
 