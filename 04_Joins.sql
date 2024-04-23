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

select * from Person.Person
select * from Person.Password

select top 50 inna.BusinessEntityID, p.FirstName, p.MiddleName, p.LastName  from Person.Person p
inner join ( select BusinessEntityID from Person.Password) inna
on inna.BusinessEntityID = p.BusinessEntityID
