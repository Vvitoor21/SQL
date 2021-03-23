use AdventureWorks2017

select * from Person.Person
select * from Sales.SalesPerson

--SOMENTE SUBSELECTS

select BusinessEntityID , SalesYTD from Sales.SalesPerson where SalesYTD in(select MIN(SalesYTD) from Sales.SalesPerson)

select BusinessEntityID , SalesYTD from Sales.SalesPerson where SalesYTD > (select avg(SalesYTD) from Sales.SalesPerson) order by BusinessEntityID desc

select FirstName, MiddleName, LastName from Person.Person where MiddleName is not null

select FirstName, MiddleName, LastName from Person.Person where MiddleName is not null and ModifiedDate in ( select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18)
select FirstName, MiddleName, LastName, ModifiedDate from Person.Person where MiddleName is not null and ModifiedDate in (select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18)
select FirstName, MiddleName, LastName, convert(varchar,ModifiedDate,103) from Person.Person where MiddleName is not null and ModifiedDate in (select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18)
select FirstName, MiddleName, LastName, convert(varchar,ModifiedDate,103) from Person.Person where MiddleName is not null and ModifiedDate in (select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18 and Datepart(year,ModifiedDate) > 2010 )

select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18

select FirstName, len(FirstName) as Tamanho,
case when len(FirstName) >= 4 then 'Nome Grande'
else null
end as Padrão from Person.Person
order by Tamanho

select * from Person.PersonPhone
select * from Person.Person







