-- i. O nome do cliente, o nome do produto, a data do pedido, a quantidade pedida, 
-- o valor unitário de venda dos produtos e o valor total do produto pedido, cujas
-- unidades pedidas por pedido seja maior que 500.

SELECT 
    NMCUSTOMER AS customer_name, 
    NMPRODUCT AS product_name, 
    DTREQUEST AS request_date, 
    QTAMOUNT AS amount, 
    VLUNITARY AS unitary_value, 
    VLTOTAL AS total_value 
FROM CUSTOMER
JOIN REQUEST ON CUSTOMER.CDCUSTOMER = REQUEST.CDCUSTOMER 
JOIN PRODUCTREQUEST ON REQUEST.CDREQUEST = PRODUCTREQUEST.CDREQUEST
JOIN PRODUCT ON PRODUCTREQUEST.CDPRODUCT = PRODUCT.CDPRODUCT
GROUP BY 
    NMCUSTOMER, 
    NMPRODUCT, 
    DTREQUEST, 
    QTAMOUNT, 
    VLUNITARY, 
    VLTOTAL, 
    REQUEST.CDREQUEST
HAVING SUM(QTAMOUNT) > 500;