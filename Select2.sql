--SYNTAX SQL SERVER--

select * from Person.BusinessEntityAddress where AddressID not between 250 and 500

--SELECT COM DOIS METODOS DIFERENTES DE USAR O BETWEEN--
select * from Person.BusinessEntityAddress where AddressID between 250 and 500
select * from Person.BusinessEntityAddress where AddressID >= 250 and <= 500


--SELECT COM IN--
select * from HumanResources.Employee where JobTitle in ('Design Engineer')


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



