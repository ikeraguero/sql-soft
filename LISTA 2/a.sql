-- a. O nome e telefone de todos os clientes em que o telefone começa com o dígito 4;

SELECT NMCUSTOMER, IDFONE
FROM CUSTOMER 
WHERE IDFONE LIKE '4%';