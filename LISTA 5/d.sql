-- d. O nome do cliente, o produto e o total que o cliente já gastou com esse
-- produto. Uma linha com o total por cliente e uma linha com o total geral;

SELECT 
    COALESCE(NMCUSTOMER, 'TOTAL GERAL') AS customer_name, 
    COALESCE(NMPRODUCT, 'TOTAL') AS product_name, 
    SUM(QTAMOUNT*VLUNITARY) 
FROM CUSTOMER AS C 
JOIN REQUEST AS R ON R.CDCUSTOMER = C.CDCUSTOMER 
JOIN PRODUCTREQUEST AS PR ON PR.CDREQUEST = R.CDREQUEST 
JOIN PRODUCT AS P ON P.CDPRODUCT = PR.CDPRODUCT
GROUP BY ROLLUP(NMCUSTOMER, NMPRODUCT)