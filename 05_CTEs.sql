with attributes as ( 
Select name, middle_name, age 
from people)
select p.name, p.middle_name, p.age
from attributes as p
