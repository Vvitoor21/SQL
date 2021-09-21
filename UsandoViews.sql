create view  Visualizacao as select * from Person.Person

select * from Visualizacao

create view somente_firstname as select FirstName from Person.Person

select * from somente_firstname

create view Duas_colunas as select PersonType, BusinessEntityID from Person.Person

select PersonType from Duas_colunas
select * from Duas_colunas

select Coluna from ent._DataView

select * from Duas_colunas where PersonType = 'EM'--também é possível aplicar filtros nas Views.
