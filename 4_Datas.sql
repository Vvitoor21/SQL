--Trabalhando com Datas

select getdate();
--Getdate vem como a estrutura ano,mes,dia - yyyy/mm/dd

select convert(char,getdate(),103) as Data
select convert(char,getdate(),102) as Data

select day(getdate()) as Dia
select month(getdate()) as Mes
select year(getdate()) as Ano

select day('11/12/2020') as Dia
select month('11/12/2020') as Mes
select year('11/12/2020') as Ano

--Datepart
--the detepart command returns an specific part of a data.

select datepart(day,getdate()) -- returning the current day
select datepart(year,getdate()) -- returning the current year
select datepart(month,getdate()) -- returning the current month
-- and instead the command getdate() we can also put the column about we want to work on.
                
-- Dateadd
--Add a data to the query.
select dateadd(day,+3,getdate())
select convert(char,dateadd(day,+3,getdate()),103)
               
select convert(varchar,ModifiedDate,103) as Data_Padrao_Brasil from Person.Person

select dateadd(day,-3,getdate())

select convert(varchar,modifiedDate,103) from Person.Person

select convert(varchar,(dateadd(day,-3,getdate())),103)
select convert(varchar,(dateadd(day,-9,getdate())),103)
select convert(varchar,(dateadd(month,-3,getdate())),103)
select convert(varchar,(dateadd(month,-5,getdate())),103)
select convert(varchar,(dateadd(year,-41,getdate())),103)
select convert(varchar,(dateadd(year,-71,getdate())),103)

select datepart(day,getdate())
select datepart(month,getdate())
select datepart(year,getdate())
