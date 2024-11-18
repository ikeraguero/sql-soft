-- c. O nome e o telefone dos fornecedores em que o DDD não foi cadastrado;

SELECT 
    NMSUPPLIER AS supplier_name, 
    IDFONE AS supplier_phone
FROM SUPPLIER 
WHERE IDFONE NOT LIKE '(%';