
select curdate() as Data_Atual;
select curtime() as Hora_Atual;
select date_add(curdate(), interval 3 day) as data_vencimento;
select date_sub(curdate(),interval 10 day)as data_pedido;
select date_format(curdate(),'%d/%m/%y') as Data_Brasil;


select PersonType,
case when PersonType  like  '%EM%' then 'ESTE EM'
end as Descricao
from Person.Person

select * from Person.PersonPhone 

select * from Person.PersonPhone po inner join Person.Person pp on po.BusinessEntityID = pp.BusinessEntityID
where pp.MiddleName in(select MiddleName from Person.Person as pp where pp.MiddleName = 'A')

select ModifiedDate from Person.PersonPhone where ModifiedDate = '2008'

select ModifiedDate from Person.PersonPhone

SELECT ModifiedDate, DATEPART(year,ModifiedDate) from Person.PersonPhone 

Where datepart (year, ModifiedDate) = '2008' 
