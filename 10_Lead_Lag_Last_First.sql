---Getting the LAST champion by year to a new column

Select year, champion,
lag(champion,1) over(order by year asc) as last_champion
from champions
order by year asc

Select year, event champion,
lag(champion) over(partition event order by event asc, year, asc) as last_event_champion
from champions
order by year asc, event asc

---Getting the NEXT(lead) champion by year to a new column

Select year, champion,
lead(champion,1) over(order by year asc) as next_champion
from champions
order by year asc

---Getting the First Value

Select year, champion,
first_value(champion) over(order by year asc) as first_champion
from champions
order by year asc

---Getting the Last Value

Select year, champion,
last_value(champion) over(order by year asc) as last_champion
from champions
order by year asc
