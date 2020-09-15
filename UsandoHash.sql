declare @HashThis nvarchar(32) set @HashThis = convert(nvarchar(32),'dslfdkjLK85kldhnv$n000#knf')
select Hashbytes('SHA2_256', @HashThis)

select FirstName from Person.Person
select hashbytes('SHA2_256',LastName) as Coluna from Person.Person

--Algoritimo de Hash: MD2 | MD4 | MD5 | SHA | SHA1 | SHA2_256 | SHA2_512

-- Use nchar quando os tamanhos das entradas de dados de coluna forem consistentes.
-- Use nvarchar quando os tamanhos das entradas de dados de coluna variarem consideravelmente.

--Identifica o algoritmo de hash a ser usado para aplicar o hash à entrada. Este é um argumento exigido sem padrão.
--As aspas simples são obrigatórias. Começando pelo SQL Server 2016 (13.x), todos os algoritmos, exceto SHA2_256 e SHA2_512, foram preteridos.

--Documentação de apoio:' https://docs.microsoft.com/pt-br/sql/t-sql/functions/hashbytes-transact-sql?view=sql-server-ver15 '

create procedure Encripitar as select HASHBYTES('SHA2_256',convert(nvarchar(30),numero)) as numero, numero2 from dbo.test

exec Encripitar

--criando stored procedures podemos melhorarar a performance do banco de dados, e retornar determinados valores para os usuarios.
--view trabalha  com visualização de dados e o alocamento deles através do select.
