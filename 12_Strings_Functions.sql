---concatenating

SELECT first_name || ' ' || last_name || ' <' || email ||'>' AS full_email  FROM customer

---upper(name) VITOR DUARTE
---lower(name) vitor duarte
---initcap(name) Vitor Duarte

SELECT 
  -- Replace whitespace in the film title with an underscore
  replace(title, ' ', '_') AS title
FROM film;
