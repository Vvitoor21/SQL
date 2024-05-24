---Returning an interval of date

select rental_date, return_date, rental_date + interval '3 days' AS expected_return_date
from dvdrentals.rental
