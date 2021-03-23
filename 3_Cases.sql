--Esta case está sendo utilizado junto com a clausula LIKE--
Select EmailAddress,
CASE  WHEN EmailAddress LIKE '%@gmail%' THEN 'GMAIL'
WHEN EmailAddress LIKE '%@yahoo%' THEN 'YAHOO'
WHEN EmailAddress LIKE '%@live%' THEN 'MICROSOFT'
WHEN EmailAddress LIKE '%@outlook%' THEN 'MICROSOFT'
WHEN EmailAddress LIKE '%@msn%' THEN 'MICROSOFT'
WHEN EmailAddress LIKE '%@hotmail%' THEN 'MICROSOFT'
ELSE 'EMAIL NÃO IDENTIFICADO' END AS DOMINIO
from TABELA_EMAIL

select x.BusinessEntityID, x.FirstName, x.LastName from  
( select distinct p.LastName, p.BusinessEntityID,
'FirstName' = case when FirstName like 'A%' then 'CLIENTE_XP1' 
                   when FirstName like 'B%' then 'CLIENTE_XP2'
                   when FirstName like 'C%' then 'CLIENTE_XP3'
                   when FirstName like 'D%' then 'CLIENTE_XP4'
                   when FirstName like 'E%' then 'CLIENTE_XP5'
                   when FirstName like 'F%' then 'CLIENTE_XP6'
                   else FirstName 
                   end
from Person.Person as p 
inner join Person.Address as a
on p.BusinessEntityID = a.AddressID) as x 
where x.FirstName != x.LastName order by x.BusinessEntityID

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

