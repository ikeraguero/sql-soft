-- c. O nome do fornecedor, o produto e qual o total de produtos dele já vendidos.
-- Uma linha do total por fornecedor e uma linha com o total geral;

SELECT 
    COALESCE(NMSUPPLIER, 'TOTAL GERAL') AS supplier_name, 
    COALESCE(NMPRODUCT, 'TOTAL') AS product_name, 
    SUM(QTAMOUNT) AS sold_amount
FROM SUPPLIER AS S
JOIN PRODUCT AS P ON P.CDSUPPLIER = S.CDSUPPLIER
JOIN PRODUCTREQUEST AS PR ON PR.CDPRODUCT = P.CDPRODUCT  
GROUP BY ROLLUP(NMSUPPLIER, NMPRODUCT)
ORDER BY supplier_name
