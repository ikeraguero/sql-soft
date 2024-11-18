--d. O nome do cliente, seu telefone, o valor da maior compra, o valor da menor
--compra, o total comprado e a média de valor comprado, ordenado por maior
--compra decrescente;

SELECT 
	NMCUSTOMER AS customer_name, 
	IDFONE AS customer_phone, 
	MAX(VLTOTAL) AS highest_order, 
	MIN(VLTOTAL) AS lowest_order
FROM CUSTOMER AS C
JOIN REQUEST AS R ON R.CDCUSTOMER = C.CDCUSTOMER 
GROUP BY NMCUSTOMER, IDFONE