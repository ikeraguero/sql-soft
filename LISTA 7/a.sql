-- a. Excluindo todos os pedidos que forem menores que R$ 1.000,00, que não possuam itens cadastrados e que sejam no mês de junho/2003;

DELETE FROM REQUEST
WHERE CDREQUEST IN (SELECT 
    DISTINCT REQUEST.CDREQUEST 
    FROM PRODUCTREQUEST 
    RIGHT JOIN REQUEST ON PRODUCTREQUEST.CDREQUEST = REQUEST.CDREQUEST
    WHERE VLTOTAL < 1000 
    AND DTREQUEST BETWEEN 
        '2003-01-06' AND '2003-30-06'
    AND PRODUCTREQUEST.CDREQUEST IS NULL
);
