--e. A data do pedido, o nome do cliente, quantos produtos distintos ele pediu, o
--valor total do pedido (baseado nos valores da tabela productrequest), a média
--de valores do pedido (baseado nos valores da tabela productrequest)

SELECT 
	DTREQUEST AS date_request, 
	NMCUSTOMER AS customer_name, 
	COUNT(DISTINCT P.CDPRODUCT) AS distinct_product, 
	SUM(QTAMOUNT * VLUNITARY) AS total, 
	AVG(QTAMOUNT * VLUNITARY) AS average 
FROM REQUEST AS R
JOIN CUSTOMER AS C ON R.CDCUSTOMER = C.CDCUSTOMER 
JOIN PRODUCTREQUEST AS PR ON R.CDREQUEST = PR.CDREQUEST 
JOIN PRODUCT AS P ON PR.CDPRODUCT = P.CDPRODUCT
GROUP BY DTREQUEST, NMCUSTOMER
ORDER BY DTREQUEST;