select * from Person.Person p inner join Person.Password a 
on p.BusinessEntityID <= 30 
and  a.BusinessEntityID <=30 
and a.BusinessEntityID=p.BusinessEntityID

select * from Person.Person p left join Person.Password a 
on p.BusinessEntityID <= 30 
and  a.BusinessEntityID <=30 
and a.BusinessEntityID=p.BusinessEntityID

select * from Person.Person p right join Person.Password a 
on p.BusinessEntityID <= 30 
and  a.BusinessEntityID <=30 
and a.BusinessEntityID=p.BusinessEntityID
