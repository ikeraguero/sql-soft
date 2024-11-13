-- f. O nome do produto, o preço e o preço total do estoque dos produtos com preço acima de 50 reais

SELECT NMPRODUCT, VLPRICE, VLPRICE * QTSTOCK AS 'TOTAL PRICE IN STOCK' 
FROM PRODUCT 
WHERE VLPRICE > 50;
