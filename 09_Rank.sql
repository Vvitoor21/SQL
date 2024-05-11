select name, age, height, weight,
rank() over(order by height) as ranking_height
from families

select person, age, height,
rank() over(order by height desc) as ranking_height
from people
