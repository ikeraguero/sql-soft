-- c. O nome e o telefone dos fornecedores em que o DDD não foi cadastrado;

SELECT NMSUPPLIER, IDFONE 
FROM SUPPLIER 
WHERE IDFONE NOT LIKE '(%';