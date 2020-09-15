create view  Visualizacao as select * from Person.Person

select * from Visualizacao

create view somente_firstname as select FirstName from Person.Person

select * from somente_firstname
