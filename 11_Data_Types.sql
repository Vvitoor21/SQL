---Returning an interval of date

select rental_date, return_date, rental_date + interval '3 days' AS expected_return_date
from dvdrentals.rental

---DATE/TIME Functions
  
---AGE(calculo de datas)
select age(data_final,data_inicio) as difenrenca_datas
from periodo
