---concatenating

SELECT first_name || ' ' || last_name || ' <' || email ||'>' AS full_email  FROM customer

---upper(name) VITOR DUARTE
---lower(name) vitor duarte
---initcap(name) Vitor Duarte

-- Replacing whitespace in the film title with an underscore
  
SELECT replace(title, ' ', '_') AS title FROM film;

-- Select the first 50 characters of description

SELECT left(description, 50) AS short_desc FROM film AS f; 
