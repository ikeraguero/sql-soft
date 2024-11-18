-- f. O nome do cliente, o nome do produto, a data do pedido, a data de entrega, a
-- quantidade pedida, o valor unitário de venda dos produtos e o valor total do
-- produto pedido, cujas unidades pedidas por pedido sejam menor que 600 e a
-- data do pedido seja no mês de agosto de 2003 e o produto comece com a
-- letra M;

SELECT 
	NMCUSTOMER AS customer_name, 
	NMPRODUCT AS product_name, 
	DTREQUEST AS request_date, 
	DTDELIVER AS deliver_date, 
	QTAMOUNT AS amount, 
	VLUNITARY AS unitary_value, 
	VLUNITARY*QTAMOUNT AS total_value
FROM CUSTOMER AS C JOIN REQUEST AS R ON C.CDCUSTOMER = R.CDCUSTOMER
JOIN PRODUCTREQUEST AS PR ON PR.CDREQUEST = R.CDREQUEST 
JOIN PRODUCT AS P ON P.CDPRODUCT = PR.CDPRODUCT 
WHERE QTAMOUNT < 600
AND DTREQUEST 
	BETWEEN '2003-01-08' AND '2003-31-08' 
AND NMPRODUCT LIKE 'M%';