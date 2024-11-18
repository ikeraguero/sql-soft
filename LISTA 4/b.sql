-- b. O nome do produto, o número de vezes que ele foi pedido e a quantidade total pedida;

SELECT 
	NMPRODUCT, 
	COUNT(*) AS times_ordered, 
	SUM(PR.QTAMOUNT) AS total_amount
FROM PRODUCT AS P
JOIN PRODUCTREQUEST AS PR ON P.CDPRODUCT = PR.CDPRODUCT 
JOIN REQUEST AS R ON R.CDREQUEST = PR.CDREQUEST
GROUP BY NMPRODUCT;