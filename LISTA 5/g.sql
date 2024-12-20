-- g. O nome e o fornecedor do produto que já foi vendido mais que 3 vezes

SELECT 
	NMPRODUCT AS product_name, 
	NMSUPPLIER AS supplier_name
FROM PRODUCT AS P
JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER 
JOIN PRODUCTREQUEST AS PR ON PR.CDPRODUCT = P.CDPRODUCT
GROUP BY NMPRODUCT, NMSUPPLIER
HAVING COUNT(NMPRODUCT) > 3;