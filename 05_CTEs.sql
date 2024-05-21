with attributes as ( 
Select name, middle_name, age 
from people)
select p.name, p.middle_name, p.age
from attributes as p

with name as (
select person, age, city
from people )
select m.person, n.age, n.city from name as n

with cities as (
select name, avg(population) as avg_pop,
from city
group by name ) 
select name, avg_pop from cities

with games as (
select game, count(console)
from playstation
group by games)
select games, console from games
