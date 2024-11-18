-- d. Atualizando a data de entrega do pedido como sendo a data do pedido + 30
-- dias para pedidos em que a diferença entre essas duas datas seja menor que
-- 10 dias e o cliente tenha comprado menos que R$ 10.000,00

UPDATE REQUEST
SET DTREQUEST = (
    SELECT DTREQUEST + 30
)

WHERE CDREQUEST IN (
    SELECT R.CDREQUEST 
    FROM REQUEST AS R
    WHERE (R.DTREQUEST + 30) - R.DTDELIVER < 10 AND VLTOTAL < 10000
)