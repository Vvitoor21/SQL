---Getting the last champion by year to a new columnc

Select year, champion,
lag(champion,1) over(order by year asc) as last_champion
from champions
order by year asc

Select year, event champion,
lag(champion) over(partition event order by event asc, year, asc) as last_event_champion
from champions
order by year asc, event asc
