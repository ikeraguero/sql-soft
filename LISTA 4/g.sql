-- g. O nome do produto, o número de vezes que ele foi pedido e a quantidade total
-- pedida para produtos que foram pedidos menos que 2 vezes;

SELECT 
	NMPRODUCT AS product_name, 
	COUNT(*) AS times_ordered,
CASE 
	WHEN COUNT(*) < 2 THEN SUM(QTAMOUNT)
	ELSE NULL
END AS amount_ordered
FROM PRODUCT AS P
JOIN PRODUCTREQUEST AS PR ON PR.CDPRODUCT = P.CDPRODUCT
GROUP BY NMPRODUCT, QTAMOUNT;