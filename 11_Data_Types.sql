---Returning an interval of date

select rental_date, return_date, rental_date + interval '3 days' AS expected_return_date
from dvdrentals.rental

select date_prova, date_prova + interval '5 days' as resultado
from exames

select dia_entrevista, dia_entrevista + interval '10 days' as retorno
from processo_seletivo
  
---DATE/TIME Functions
  
---AGE(calculo de datas)
  
select age(data_final,data_inicio) as difenrenca_datas
from periodo

select age(ano_atual, ano_nascimento) as idade
from pesssoas

---Returning the date at the present moment
Select NOW()
---or
Select current_timestamp

---Separating date and time
Select current_date
Select current_time
