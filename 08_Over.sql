SELECT distinct c.name AS country, m.season, m.home_goal, m.away_goal, 
avg(m.home_goal + m.away_goal) over() AS overall_avg
FROM soccer.match AS m LEFT JOIN soccer.country AS c ON m.country_id = c.id limit 3;

SELECT distinct c.name AS country, m.season,
sum(m.home_goal + m.away_goal) over(partition by c.name, m.season) AS sum
FROM soccer.match AS m LEFT JOIN soccer.country AS c ON m.country_id = c.id
where c.name = 'Scotland'

select name, middle_name, family, age,
avg(age) over() as overall_age
from families

select employee, salary,
sum(salary) over() as overall_salaries
from staff
