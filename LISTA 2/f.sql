-- f. O nome do produto, o preço e o preço total do estoque dos produtos com preço acima de 50 reais

SELECT 
    NMPRODUCT AS product_name, 
    VLPRICE AS product_price, 
    VLPRICE * QTSTOCK AS total_stock_price 
FROM PRODUCT 
WHERE VLPRICE > 50;
