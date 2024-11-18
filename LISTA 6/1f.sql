-- f. Faça o script que atualize o campo endereço do cliente para ‘DESCONHECIDO’ onde o endereço for NULO.

UPDATE CUSTOMER 
SET NMADRESS = 'DESCONHECIDO'
WHERE CDCUSTOMER IN (
    SELECT CDCUSTOMER 
    FROM CUSTOMER AS C
    WHERE NMADRESS IS NULL
);