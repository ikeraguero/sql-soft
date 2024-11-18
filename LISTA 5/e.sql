--e. O nome e o telefone de todos os clientes que ainda não compraram produtos;


SELECT 
	NMCUSTOMER AS customer_name, 
	IDFONE AS customer_phone
FROM CUSTOMER AS C
LEFT JOIN REQUEST AS R ON R.CDCUSTOMER = C.CDCUSTOMER
WHERE R.CDCUSTOMER IS NULL; 