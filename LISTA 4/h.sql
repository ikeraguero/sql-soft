--h. O nome do cliente, o produto, o valor gasto com o produto, quantas vezes ele
--foi pedido pelo cliente e o nome do fornecedor. Somente para produtos em
--que o cliente gastou mais de R$1.000,00, ordenado por cliente e produto.

SELECT 
    NMCUSTOMER AS customer_name, 
    NMPRODUCT AS product_name, 
    SUM(QTAMOUNT * VLUNITARY) AS total_spent, 
    COUNT(DISTINCT REQUEST.CDREQUEST) AS times_ordered, 
    NMSUPPLIER AS supplier_name
FROM CUSTOMER AS C
JOIN REQUEST AS R ON R.CDCUSTOMER = C.CDCUSTOMER 
JOIN PRODUCTREQUEST AS PR ON PR.CDREQUEST = R.CDREQUEST
JOIN PRODUCT AS P ON P.CDPRODUCT = PR.CDPRODUCT 
JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER
GROUP BY 
    NMCUSTOMER, 
    NMPRODUCT, 
    NMSUPPLIER
HAVING 
    SUM(QTAMOUNT * VLUNITARY) > 1000
ORDER BY 
    NMCUSTOMER, 
    NMPRODUCT;
