-- f. O nome do fornecedor e quantos produtos ele fornece, para todos os fornecedores que fornecem mais que um produto;

SELECT 
	NMSUPPLIER AS supplier_name,  
CASE 
	WHEN COUNT(*) > 1 THEN COUNT(*)
	ELSE NULL
END AS offered_products
FROM SUPPLIER AS S
JOIN PRODUCT AS P ON
P.CDSUPPLIER = S.CDSUPPLIER 
GROUP BY NMSUPPLIER;