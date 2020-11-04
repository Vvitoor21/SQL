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
--..........................................................................................................................
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

