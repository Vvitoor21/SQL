
select BusinessEntityID , SalesYTD from Sales.SalesPerson where SalesYTD in(select MIN(SalesYTD) from Sales.SalesPerson)

select BusinessEntityID , SalesYTD from Sales.SalesPerson where SalesYTD > (select avg(SalesYTD) from Sales.SalesPerson) order by BusinessEntityID desc

select FirstName, MiddleName, LastName from Person.Person where MiddleName is not null

select FirstName, MiddleName, LastName from Person.Person where MiddleName is not null 
and ModifiedDate in ( select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18)
  
select FirstName, MiddleName, LastName, ModifiedDate from Person.Person where MiddleName is not null
and ModifiedDate in (select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18)
  
select FirstName, MiddleName, LastName, convert(varchar,ModifiedDate,103) from Person.Person where MiddleName is not null 
and ModifiedDate in (select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18)

select FirstName, MiddleName, LastName, convert(varchar,ModifiedDate,103) from Person.Person where MiddleName is not null
and ModifiedDate in (select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18 and Datepart(year,ModifiedDate) > 2010)

select ModifiedDate from Person.Person where Datepart(day,ModifiedDate)= 18

select FirstName, len(FirstName) as Tamanho,
case when len(FirstName) >= 4 then 'Nome Grande'
else null
end as Padrão from Person.Person
order by Tamanho

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

---Subquery in SELECT

select season,
sum(home_goal) as total_home_goal,
(select sum(home_goal) from soccer.match where season = '2011/2012') as SUM_2011,
(select sum(home_goal) from soccer.match where season = '2012/2013') as SUM_2012,
(select sum(home_goal) from soccer.match where season = '2013/2014') as SUM_2013,
(select sum(home_goal) from soccer.match where season = '2014/2015') as SUM_2014
from soccer.match
group by season




