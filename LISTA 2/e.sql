-- e. O nome e o preço dos produtos com preço entre 10 e 20 reais;

SELECT 
    NMPRODUCT AS product_name, 
    VLPRICE AS product_price
FROM PRODUCT 
WHERE VLPRICE 
BETWEEN 10 AND 20;