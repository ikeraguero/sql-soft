-- f. O nome e o telefone dos fornecedores que fornecem o produto ‘leite em po”
-- ou o produto “agua mineral”;

SELECT 
	NMSUPPLIER AS supplier_name, 
	NMPRODUCT AS product_name, 
	IDFONE AS supplier_phone
FROM PRODUCT AS P 
JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER
WHERE NMPRODUCT 
LIKE 'Leite em pó' 
OR NMPRODUCT LIKE 'Água mineral';
 