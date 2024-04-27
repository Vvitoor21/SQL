---How many home_goals and away_goals was stored by country and season and how does it compares
---to the average goals ?

SELECT distinct c.name AS country, m.season, m.home_goal, m.away_goal, 
avg(m.home_goal + m.away_goal) over() AS overall_avg
FROM soccer.match AS m LEFT JOIN soccer.country AS c ON m.country_id = c.id limit 3;

select name, middle_name, family, age,
avg(age) over() as overall_age
from families