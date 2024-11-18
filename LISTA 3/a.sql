-- a. O nome do produto, o nome do fornecedor, o preço do produto, o preço com
-- 10% de desconto, o preço com 20% de desconto e o preço com 30% de
-- desconto para produtos cujo valor com 10% de desconto ultrapasse os 15
-- reais, isso ordenado por preço e produto;

SELECT 
	NMPRODUCT AS product_name, 
	NMSUPPLIER AS supplier_name, 
	VLPRICE, VLPRICE - (VLPRICE*0.1) AS '-10%', 
	VLPRICE - (VLPRICE*0.2) AS '-20%', 
CASE 
	WHEN (VLPRICE - (VLPRICE*0.1)) > 15 THEN VLPRICE - VLPRICE*0.3
	ELSE NULL 
	END AS '-30%'
FROM PRODUCT AS P
JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER 
ORDER BY VLPRICE, NMPRODUCT;