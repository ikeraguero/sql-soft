-- g. O nome do cliente, o nome do produto o nome do fornecedor, a data do
-- pedido, a data de entrega e o preço, somente se o fornecedor for de São Paulo
-- (011) e o preço seja maior que 20 reais

SELECT 
	NMCUSTOMER AS customer_name, 
	NMPRODUCT AS product_name, 
	NMSUPPLIER AS supplier_name, 
	DTREQUEST AS request_date, 
	DTDELIVER AS deliver_date, 
	VLTOTAL AS total_value 
FROM CUSTOMER AS C
JOIN REQUEST AS R ON C.CDCUSTOMER = R.CDCUSTOMER
JOIN PRODUCTREQUEST AS PR ON R.CDREQUEST = PR.CDREQUEST
JOIN PRODUCT AS P ON P.CDPRODUCT = PR.CDPRODUCT 
JOIN SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER 
WHERE S.IDFONE 
LIKE '(011)%' 
AND VLPRICE > 20;