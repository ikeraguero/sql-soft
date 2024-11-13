-- f. O nome do fornecedor e quantos produtos ele fornece, para todos os fornecedores que fornecem mais que um produto;

SELECT NMSUPPLIER, 
CASE 
	WHEN COUNT(*) > 1 THEN COUNT(*)
	ELSE NULL
END AS 'PRODUCTS OFFERED'
FROM SUPPLIER JOIN PRODUCT ON
PRODUCT.CDSUPPLIER = SUPPLIER.CDSUPPLIER GROUP BY NMSUPPLIER;