-- c. O nome do fornecedor, o produto e qual o total de produtos dele já vendidos.
-- Uma linha do total por fornecedor e uma linha com o total geral;

SELECT 
    COALESCE(NMSUPPLIER, 'Total Geral') AS Supplier, 
    COALESCE(NMPRODUCT, 'Total') AS Product, 
    SUM(QTAMOUNT) AS 'SOLD PRODUCTS AMOUNT' 
FROM SUPPLIER 
JOIN PRODUCT ON PRODUCT.CDSUPPLIER = SUPPLIER.CDSUPPLIER
JOIN PRODUCTREQUEST ON PRODUCTREQUEST.CDPRODUCT = PRODUCT.CDPRODUCT  
GROUP BY ROLLUP(NMSUPPLIER, NMPRODUCT)
ORDER BY Supplier
