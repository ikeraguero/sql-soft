-- d. O nome do cliente, a data do pedido e o valor total, o cliente deve aparecer
-- mesmo que não tenha feito nenhum pedido.

SELECT 
	NMCUSTOMER AS customer_name, 
	DTREQUEST AS request_date, 
	VLTOTAL AS total_value 
FROM REQUEST AS R
RIGHT JOIN CUSTOMER AS C ON R.CDCUSTOMER = C.CDCUSTOMER;