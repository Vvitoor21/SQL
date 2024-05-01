with attributes as ( 
Select name, middle_name, age 
from people)
select p.name, p.middle_name, p.age
from attributes as p

with name as (
select person, age, city
from people )
select m.person, n.age, n.city from name as n
