-- f. O nome do cliente, o nome do produto, a data do pedido, a data de entrega, a
-- quantidade pedida, o valor unitário de venda dos produtos e o valor total do
-- produto pedido, cujas unidades pedidas por pedido sejam menor que 600 e a
-- data do pedido seja no mês de agosto de 2003 e o produto comece com a
-- letra M;

SELECT NMCUSTOMER, NMPRODUCT, DTREQUEST, DTDELIVER, QTAMOUNT, VLUNITARY, VLTOTAL
FROM CUSTOMER JOIN REQUEST ON CUSTOMER.CDCUSTOMER = REQUEST.CDCUSTOMER
JOIN PRODUCTREQUEST ON PRODUCTREQUEST.CDREQUEST = REQUEST.CDREQUEST 
JOIN PRODUCT ON PRODUCT.CDPRODUCT = PRODUCTREQUEST.CDPRODUCT WHERE QTAMOUNT < 600
AND DTREQUEST BETWEEN '2003-01-08' AND '2003-31-08' AND NMPRODUCT LIKE 'M%';