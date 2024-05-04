select date, home_goal, away_goal,
sum(home_goal) over(order by date rows between unbounded preceding and current row) as running_total
from soccer.match
where hometeam_id = '8456'

select date, home_goal, away_goal,
sum(home_goal) over(order by date rows between 1 preceding and current row) as running_total
from soccer.match
where hometeam_id = '8456'

select date, home_goal, away_goal,
sum(home_goal) over(order by date rows between CURRENT ROW AND UNBOUNDED FOLLOWING) as running_total
from soccer.match
where hometeam_id = '8456'
