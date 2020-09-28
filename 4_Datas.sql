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

