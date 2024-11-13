-- b. Todas as colunas dos clientes que não possuem telefone cadastrado;

SELECT * 
FROM CUSTOMER 
WHERE IDFONE IS NULL;