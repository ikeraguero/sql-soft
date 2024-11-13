--  h. O nome do cliente, a data do pedido e o valor total do pedido para pedidos feitos entre junho e julho de 2003;

SELECT NMCUSTOMER, DTREQUEST, VLTOTAL 
FROM CUSTOMER 
JOIN REQUEST ON CUSTOMER.CDCUSTOMER = REQUEST.CDCUSTOMER 
WHERE DTREQUEST
BETWEEN '2003-01-06' AND '2003-31-07'
