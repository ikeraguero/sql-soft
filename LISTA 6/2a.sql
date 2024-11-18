-- . a. Todos os produtos comprados por cliente (nome), com o número de vezes que
-- foi comprado, a quantidade total comprada e o valor total já pago por aquele
-- produto;


SELECT NMCUSTOMER, NMPRODUCT, 
    COUNT(NMPRODUCT) AS times_bought, 
    COUNT(NMPRODUCT) * QTAMOUNT AS total_amount, 
    COUNT(NMPRODUCT) * QTAMOUNT * VLUNITARY AS total_spent 
FROM PRODUCTREQUEST AS PR
JOIN REQUEST AS R ON PR.CDREQUEST = R.CDREQUEST 
JOIN CUSTOMER AS C ON C.CDCUSTOMER = R.CDCUSTOMER 
JOIN PRODUCT AS P ON PR.CDPRODUCT = P.CDPRODUCT
GROUP BY NMCUSTOMER, NMPRODUCT, QTAMOUNT, VLUNITARY