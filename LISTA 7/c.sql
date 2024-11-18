-- c. Inserindo os fornecedores como clientes. Utilize como código o valor máximo
-- mais o código do fornecedor para gerar o código do novo cliente criado a partir
-- do fornecedor;

INSERT INTO CUSTOMER (CDCUSTOMER, NMCUSTOMER, IDFONE, NMADRESS)
SELECT (SELECT 
        MAX(CDCUSTOMER) 
		FROM CUSTOMER) + CDSUPPLIER,
		NMSUPPLIER AS supplier_name,
		IDFONE supplier_phone,
		'DESCONHECIDO' 
FROM SUPPLIER;