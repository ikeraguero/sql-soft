-- d. O nome, quantidade em estoque e o preço com desconto de 10% dos produtos que tem mais de 2000 unidades em estoque;

SELECT 
    NMPRODUCT AS product_name, 
    QTSTOCK AS quantity_stock, 
    VLPRICE - (VLPRICE * 0.1) AS price_with_discount
FROM PRODUCT 
WHERE QTSTOCK > 2000;
