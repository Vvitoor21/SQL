---Getting the last champion by year to a new columnc

Select year, champion,
lag(champion,1) over(order by year asc) as last_champion
from champions
order by year asc
