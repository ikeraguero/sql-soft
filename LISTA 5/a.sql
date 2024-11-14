-- a. O nome de todos os produtos e quantas vezes ele foi vendido, mesmo que não tenha sido vendido ainda;

SELECT NMPRODUCT, SUM(QTAMOUNT) 
FROM PRODUCT 
LEFT JOIN PRODUCTREQUEST ON PRODUCT.CDPRODUCT = PRODUCTREQUEST.CDPRODUCT 
GROUP BY NMPRODUCT;
