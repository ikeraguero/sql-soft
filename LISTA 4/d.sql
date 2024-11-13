--d. O nome do cliente, seu telefone, o valor da maior compra, o valor da menor
--compra, o total comprado e a média de valor comprado, ordenado por maior
--compra decrescente;

SELECT NMCUSTOMER, IDFONE, MAX(VLTOTAL) AS 'MAX PRICE', MIN(VLTOTAL) AS 'MIN PRICE' 
FROM CUSTOMER
JOIN REQUEST ON REQUEST.CDCUSTOMER = CUSTOMER.CDCUSTOMER 
GROUP BY NMCUSTOMER, IDFONE