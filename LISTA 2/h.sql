--  h. O nome do cliente, a data do pedido e o valor total do pedido para pedidos feitos entre junho e julho de 2003;

SELECT 
	NMCUSTOMER AS customer_name, 
	DTREQUEST AS request_date, 
	VLTOTAL AS total_request_value 
FROM CUSTOMER 
JOIN REQUEST ON CUSTOMER.CDCUSTOMER = REQUEST.CDCUSTOMER 
WHERE DTREQUEST
BETWEEN '2003-01-06' AND '2003-31-07'
