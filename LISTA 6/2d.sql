-- d. O nome do cliente, a data do pedido e o valor total, o cliente deve aparecer
-- mesmo que não tenha feito nenhum pedido.

SELECT NMCUSTOMER, DTREQUEST, VLTOTAL 
FROM REQUEST 
RIGHT JOIN CUSTOMER ON REQUEST.CDCUSTOMER = CUSTOMER.CDCUSTOMER;