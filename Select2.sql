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




