-- b. O nome do fornecedor, e o número de produtos que ele fornece, mesmo que
-- não tenha fornecido produto algum;

SELECT 
	NMSUPPLIER AS supplier_name, 
	COUNT(NMPRODUCT) AS offered_products
FROM SUPPLIER AS S
LEFT JOIN PRODUCT as P ON P.CDSUPPLIER = S.CDSUPPLIER 
GROUP BY NMSUPPLIER;