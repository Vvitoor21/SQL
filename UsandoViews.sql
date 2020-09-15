-- Para focalizar, simplificar e personalizar a percepção que cada usuário tem do banco de dados.

create view  Visualizacao as select * from Person.Person

select * from Visualizacao

create view somente_firstname as select FirstName from Person.Person

select * from somente_firstname

