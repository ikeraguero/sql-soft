/* k. Faça o script para excluir todas as tabelas criadas no exercício a. */


-- @Sql vai receber os comandos sql gerados dinamicamente pra deletar as CONSTRAINTS
-- @Cursor vai iterar por cada row e executar os comandos gerados para excluir as FKs
DECLARE @Sql NVARCHAR(500)
DECLARE @Cursor CURSOR


-- Cursor é definido para fazer fetch dos resultados do SELECT
-- SELECT cria uma lista de comandos para deletar as FKs, através do join das tabelas INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS
-- (guarda informações sobre relações das FKs) e INFORMATION_SCHEMA.TABLE_CONSTRAINTS ( guarda informações sobre todas as CONSTRAINTS)
-- Constrói um ALTER TABLE... para cada FK identificada
SET @Cursor = CURSOR FAST_FORWARD FOR
SELECT DISTINCT sql = 'ALTER TABLE [' + tc2.TABLE_SCHEMA + '].[' + tc2.TABLE_NAME + '] DROP CONSTRAINT [' + rc1.CONSTRAINT_NAME + '];'
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS rc1
LEFT JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc2 ON tc2.CONSTRAINT_NAME = rc1.CONSTRAINT_NAME

-- Cursor irá guardar o primeiro comando gerado na variável Sql e estará pronto para ser executado.
OPEN @Cursor
FETCH NEXT FROM @Cursor INTO @Sql

-- Loop que roda enquanto tiver comandos para serem processados (Quando não houve, FETCH STATUS retornará);
-- Comando será executado e o Cursor guardará o proximo comando em Sql, para ser executado na proxima vez que o loop rodar
WHILE (@@FETCH_STATUS = 0)
BEGIN
    EXEC sp_executesql @Sql
    FETCH NEXT FROM @Cursor INTO @Sql
END

-- Fechando o Cursor e desalocando recursos usados por ele
CLOSE @Cursor
DEALLOCATE @Cursor

-- Comando para deletar todas as tabelas após remover as CONSTRAINTS 
EXEC sp_MSforeachtable 'DROP TABLE ?'
