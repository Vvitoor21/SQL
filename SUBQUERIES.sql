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

select FirstName, MiddleName, LastName, convert(varchar,ModifiedDate,103) as 'Day>18 Year>2010', 
case when MiddleName like 'A' then 'AMERICANAS'
     when MiddleName like 'B' then 'BURGER KING'
     when MiddleName like 'C' then 'CASAS BAHIA'
	 when MiddleName like 'D' then 'DORITOS'	
	 when MiddleName like 'E' then 'EXTRA'
	 when MiddleName like 'F' then 'FACEBOOK'
	 when MiddleName like 'G' then 'GOOGLE'
	 when MiddleName like 'H' then 'HSBC'
else 'RASTREANDO DOMINO'
end as Marca
from Person.Person where MiddleName is not null and ModifiedDate in 
(select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18 and Datepart(year,ModifiedDate) > 2010)
order  by Marca

select distinct X.FirstName, X.SOMA from 
(select convert(varchar,p.ModifiedDate,103) as Data ,p.FirstName, p.MiddleName,
case when p.FirstName like 'A%' then '000 '+p.FirstName
     when p.FirstName like 'B%' then '011 '+p.FirstName
     when p.FirstName like 'C%' then '022 '+p.FirstName
	 when p.FirstName like 'D%' then '033 '+p.FirstName
	 when p.FirstName like 'E%' then '044 '+p.FirstName
else FirstName
end as SOMA
from Person.Person as p inner join
Person.Password as a
on p.BusinessEntityID = a.BusinessEntityID
and p.MiddleName is not null) as x
where X.SOMA != x.FirstName
order by x.SOMA

select FirstName, len(FirstName) as Tamanho,
case when len(FirstName) >= 4 then 'Nome Grande'
else null
end as Padrão from Person.Person
order by Tamanho

select * from Person.PersonPhone
select * from Person.Person

--USEI UM APELIDO PARA O SELECT PARA USAR AS COUNAS ALTERADAS--
select x.FirstName, X.NOME, x.BusinessEntityID, x.DATA, X.DIA, X.MES, X.NOME_DO_MES from(
select p.FirstName, p.BusinessEntityID, 
convert(varchar,o.ModifiedDate,103) as DATA,
datepart(month,o.ModifiedDate) as MES,
datepart(day,o.ModifiedDate) as DIA,
case when p.FirstName like 'A%' then '000 '+p.FirstName
     when p.FirstName like 'B%' then '011 '+p.FirstName
     when p.FirstName like 'C%' then '022 '+p.FirstName
	 when p.FirstName like 'D%' then '033 '+p.FirstName
	 when p.FirstName like 'E%' then '044 '+p.FirstName
else FirstName
end as NOME,
case when datepart(month,o.ModifiedDate) like '8' then 'Agosto'
when datepart(month,o.ModifiedDate) like '7' then 'Julho'
when datepart(month,o.ModifiedDate) like '9' then 'Setembro'
else 'OUTRO_MES'
end as NOME_DO_MES
from Person.Person as p
inner join Person.PersonPhone as o 
on p.BusinessEntityID = o.BusinessEntityID
) as X where X.NOME != X.FirstName and DATEPART(year,x.DATA) = 2011 and X.MES in(8,7,9)
order by X.NOME





