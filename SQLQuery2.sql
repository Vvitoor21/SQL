use AdventureWorks2017

select * from Person.Person

select FirstName,
case when FirstName like 'A%' then 'ClienteXP-A1'
else FirstName 
end as Dominio
from Person.Person 
order by FirstName 

select top 10 FirstName
from Person.Person
union all
select top 10 FirstName from Person.Person

select * from Production.Product where ListPrice >
(select avg(ListPrice) from Production.Product)

select avg(ListPrice) from Production.Product

select * from Production.Product where ListPrice >=
(select avg(ListPrice) from Production.Product)

select * from Production.Product

--MAIORES TAMANHOS E SEUS RESPECTIVOS NOMES
select Name, Size from Production.Product where Size in (Select MAX(Size) FROM Production.Product)
--select Name, max(Size) from Production.Product group by Name ESTE EXEMPLO NÃO FUNCIONA

select Name, Size from Production.Product where Size in (Select MAX(Size) FROM Production.Product)
union all
select Name, Size from Production.Product where Size in (Select MIN(Size) FROM Production.Product)


--Todos as colunas iguais a 750
select * from Production.Product where ReorderPoint = 750

--Todas as colunas diferentes de 750
select * from Production.Product where ReorderPoint not in(select ReorderPoint from Production.Product where ReorderPoint = 750)

--Também poderiamos usar:
select * from Production.Product where ReorderPoint != 750

select * from Person.Person
select * from Person.Password



