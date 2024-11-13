-- g. O nome do produto, o número de vezes que ele foi pedido e a quantidade total
-- pedida para produtos que foram pedidos menos que 2 vezes;

SELECT NMPRODUCT, COUNT(*) AS 'TIMES ORDERED',
CASE 
	WHEN COUNT(*) < 2 THEN SUM(QTAMOUNT)
	ELSE NULL
END AS 'AMOUNT ORDERED'
FROM PRODUCT 
JOIN PRODUCTREQUEST ON PRODUCTREQUEST.CDPRODUCT = PRODUCT.CDPRODUCT
GROUP BY NMPRODUCT, QTAMOUNT;