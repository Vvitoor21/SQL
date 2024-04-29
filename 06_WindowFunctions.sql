---How many home_goals and away_goals was stored by country and season and how does it compares
---to the average goals ?

SELECT distinct c.name AS country, m.season, m.home_goal, m.away_goal, 
avg(m.home_goal + m.away_goal) over() AS overall_avg
FROM soccer.match AS m LEFT JOIN soccer.country AS c ON m.country_id = c.id limit 3;

select name, middle_name, family, age,
avg(age) over() as overall_age
from families

select name, age, height, weight,
rank() over(order by height) as ranking_height
from families

select person, age, height,
rank() over(order by height desc) as ranking_height
from people

select distinct w.season,
avg(w.temperature) over(partition by w.season) as avg_temp
from weather w

select distinct m.season,
sum(m.home_goal) over(partition by m.season) as overall_sum_goals
from soccer.match m
