/*Simple queries using OVER() function */

select name, middle_name, family, age, 
avg(age) over() as overall_age
from families

select employee, salary,
sum(salary) over() as overall_salaries
from staff

select distinct w.season,
avg(w.temperature) over(partition by w.season) as avg_temp
from weather w

select distinct m.season, month,
sum(m.home_goal) over(partition by m.season, month) as overall_sum_goals
from soccer.match m

select year,month, email_name,
avg(send) over(partition by year,month,email_name) as avg_send
from tracking_emails

select employee,
sum(salaries) over(partition by employee) as group_em
from staff

select quarto, hospedes,
avg(hospedes) over() as media_hospedes_total
from pousada

/*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/ 
  
select year,  month, email_name,
avg(send) over(partition by year,month,email_name) as avg_send
sum(send) over(partition by year,month,email_name) as sum_send
count(send) over(partition by year,month,email_name) as count_send ---Counting the lines
from tracking_emails

SELECT distinct c.name AS country, m.season, m.home_goal, m.away_goal, 
avg(m.home_goal + m.away_goal) over() AS overall_avg
FROM soccer.match AS m LEFT JOIN soccer.country AS c ON m.country_id = c.id limit 3;

SELECT distinct c.name AS country, m.season,
sum(m.home_goal + m.away_goal) over(partition by c.name, m.season) AS sum
FROM soccer.match AS m LEFT JOIN soccer.country AS c ON m.country_id = c.id
where c.name = 'Scotland'

---Podemos juntas duas clausulas over() para soma e média como no exemplo abaixo
SELECT distinct c.name AS country, m.season,
sum(m.home_goal + m.away_goal) over(partition by c.name, m.season) AS sum,
avg(m.home_goal + m.away_goal) over(partition by c.name, m.season) AS avg
FROM soccer.match AS m LEFT JOIN soccer.country AS c ON m.country_id = c.id
where c.name = 'Scotland'

SELECT distinct c.name AS country, m.season,
sum(m.home_goal + m.away_goal) over(partition by c.name, m.season) AS sum
FROM soccer.match AS m LEFT JOIN soccer.country AS c ON m.country_id = c.id
where c.name = 'Scotland'

SELECT distinct c.name AS country, m.season,
sum(m.home_goal + m.away_goal) over(partition by c.name, m.season) AS sum,
avg(m.home_goal + m.away_goal) over(partition by c.name, m.season) AS avg
FROM soccer.match AS m LEFT JOIN soccer.country AS c ON m.country_id = c.id
where c.name = 'Scotland'

select distinct s.country,s.season,s.soma,
avg(m.home_goal + m.away_goal) over() AS overall_avg
from (
SELECT c.name AS country, c.id, m.season, sum(m.home_goal + m.away_goal) as soma
FROM soccer.match AS m LEFT JOIN soccer.country AS c ON m.country_id = c.id 
where c.name = 'Belgium'
group by c.name, m.season, c.id ) s
left join soccer.match as m on m.country_id = s.id
--- / / /
