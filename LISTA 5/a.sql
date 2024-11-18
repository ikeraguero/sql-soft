-- a. O nome de todos os produtos e quantas vezes ele foi vendido, mesmo que não tenha sido vendido ainda;

SELECT 
	NMPRODUCT AS product_name, 
	COUNT(*) AS times_sold
FROM PRODUCT AS P
LEFT JOIN PRODUCTREQUEST AS PR ON P.CDPRODUCT = PR.CDPRODUCT 
GROUP BY NMPRODUCT;
