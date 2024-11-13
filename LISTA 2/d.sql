-- d. O nome, quantidade em estoque e o preço com desconto de 10% dos produtos que tem mais de 2000 unidades em estoque;

SELECT NMPRODUCT, QTSTOCK, VLPRICE - VLPRICE * 0.1 
FROM PRODUCT 
WHERE QTSTOCK > 2000;
