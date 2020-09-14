--SYNTAX SQL SERVER--

select * from Person.BusinessEntityAddress where AddressID not between 250 and 500

--SELECT COM DOIS METODOS DIFERENTES DE USAR O BETWEEN--
select * from Person.BusinessEntityAddress where AddressID between 250 and 500
select * from Person.BusinessEntityAddress where AddressID >= 250 and <= 500


--SELECT COM IN--
select * from HumanResources.Employee where JobTitle in ('Design Engineer')
select * from HumanResources.Employee where JobTitle in ('Design Engineer','Marketing Specialist')


--ABAIXO UM SELECT COM AS CONDICOES 'CASE' E 'LIKE'--
Select EmailAddress,
CASE  WHEN EmailAddress LIKE '%@gmail%' THEN 'GMAIL'
WHEN EmailAddress LIKE '%@yahoo%' THEN 'YAHOO'
WHEN EmailAddress LIKE '%@live%' THEN 'MICROSOFT'
WHEN EmailAddress LIKE '%@outlook%' THEN 'MICROSOFT'
WHEN EmailAddress LIKE '%@msn%' THEN 'MICROSOFT'
WHEN EmailAddress LIKE '%@hotmail%' THEN 'MICROSOFT'
ELSE 'OUTROS' END AS FLAG_DOMINIO
from Dataview_Subs

select * from Production.WorkOrder

select ProductId, count(ProductId) as quantidade ,avg(StockedQty) as valor_entre
from Production.WorkOrder group by ProductId

select ProductId, StockedQty from Production.WorkOrder where ProductId = 925

#SELECIONANDO A MÉDIA DE ACORDO COM A QUANTIDADE TOTAL DE CADA "ProductID".
select ProductId, count(ProductId) as quantidade ,avg(StockedQty) as valor_entre
from Production.WorkOrder group by ProductId

select ProductId, StockedQty from Production.WorkOrder where ProductId = 925

#O COMANDO "HAVING" É ULTILIZADO PARA COLUNAS Q JA ESTÃO AGRUPADAS PELO GROUP BY 
select ProductId, count(ProductID) from Production.WorkOrder group by ProductID having count(ProductId) > 1080

use AdventureWorks2017

select * from Production.WorkOrder

select ProductId, count(ProductId) as quantidade ,avg(StockedQty) as valor_entre
from Production.WorkOrder group by ProductId

select ProductId, StockedQty from Production.WorkOrder where ProductId = 925

select ProductId, count(ProductID) from Production.WorkOrder group by ProductID having count(ProductId) > 1080

select * from Production.WorkOrder;

#TRABALHANDO COM DATAS
select avg(Total),datepart(month,Date) as mes from Sales
group by  datepart(month,Date) order by mes

use AdventureWorks2017

select * from Person.Person

select 2 + 2 as soma, 2-2 as diferenca,2*2 as multiplicacao, 2/2 as divisao

--Convert e Cast 
select 'O nome da pessoa é '+ FirstName +'.E seu número é: '+
cast(EmailPromotion as varchar(2))as Introducao
from Person.Person

select 'o numero do email é:'+
convert(varchar(2),EmailPromotion)as Numero
from Person.Person

select ModifiedDate from Person.Person

Select 'A data:'+convert(varchar(100),ModifiedDate)+' - está entre 2009'as Data from Person.Person  
where datepart(year,ModifiedDate)= '2009'
--Podemos usar ambas a funções cast e convert.Porém cast está para ISO e convert para T-SQL
                               
use Estudos

-- Criando um coluna calculavel dentro da tabela sql --------------------------------------------------------------------------------------------------------------------------
create table test(numero int, numero2 int, soma as(numero + numero2))
create table sub(numero int,numero2 int, subtracao as(numero - numero 1))
create table divi(n1 int, n2 int, divisao as(n1 / n2))
                                                  
insert into test values(5,5)
insert into test values(10,5)
insert into test values(5,30)

select * from test
                                                   
-- Concatenação de Strings------------------------------------------------------------------------------------------------------------------------------------------------------
select 'Vitor'+'está'+'estudando'+'sql'    
