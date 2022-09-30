-- Portfolio SQL by SQLite

--#1 how many records actor and film ?
/* SELECT
(SELECT COUNT(*) FROM actor) AS actor,
(SELECT COUNT(*) FROM film) AS film
; */

--#2 Does the postal_code column in the address table have NULL values?
/* SELECT
COUNT(*),
COUNT(postal_code)
FROM address; */

--#3 Find out the number of actors whose names start with P.
/* SELECT * FROM actor
WHERE first_name REGEXP '^P'; -- starts with P
SELECT * FROM actor
WHERE first_name LIKE 'P%'; -- same result as LIKE 'p% */

--#4 Find out the number of actors whose names start with P or A.
/* SELECT * FROM actor
WHERE first_name REGEXP '^[PA]'
ORDER BY first_name;
SELECT * FROM actor
WHERE first_name LIKE 'P%' OR first_name LIKE 'A%'
ORDER BY first_name; */

--#5 List of top 10 most played actors
/* SELECT
first_name,
last_name,
COUNT(*) n
FROM actor A
JOIN film_actor B ON A.actor_id = B.actor_id
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10;

SELECT
first_name,
last_name,
COUNT(*) films
FROM actor A
JOIN film_actor B ON A.actor_id = B.actor_id
GROUP BY 1, 2
HAVING films >= 35
ORDER BY 3 DESC; */

--#6 What are the ratings columns in the film table (distinct values)?
-- look at distinct values
/* SELECT DISTINCT rating FROM film;
-- count each rating in film
SELECT
rating,
COUNT(*) n
FROM film
GROUP BY 1; */

--#7 What is the proportion of R-rated movies (%) in the film table?
/* SELECT
rating,
n,
n/ CAST(totaln AS REAL) AS ratingPercent
FROM (
SELECT
rating,
COUNT(*) n,
(SELECT COUNT(*) FROM film) AS totaln
FROM film
GROUP BY 1
)
ORDER BY 2 DESC; */

--#8 Create an email for every actor in this format firstname.lastname@sakila.com
/* SELECT
first_name,
last_name,
LOWER(first_name || '.' || last_name) || '@sakila.com' AS email
FROM actor; */

--#9 adjust format firstname and lastname  
/* SELECT
SUBSTR(first_name,1,1) || LOWER(SUBSTR(first_name,2)) AS firstname,
SUBSTR(last_name,1,1) || LOWER(SUBSTR(last_name,2)) AS lastname,
LOWER(email) AS email
FROM customer; */

--#10 Retrieve customer personal information name,address,city and japan
/* SELECT
A.customer_id,
A.first_name,
A.last_name,
B.address,
C.city,
D.country
FROM customer A
JOIN address B ON A.address_id = B.address_id
JOIN city C ON B.city_id = C.city_id
JOIN country D ON C.country_id = D.country_id
WHERE D.country = 'Japan'; */

--#11 Retrieve movie name in comedy for rating PG
/* SELECT
C.name,
A.film_id,
A.title,
A.release_year,
A.rating
FROM film A
JOIN film_category B ON A.film_id = B.film_id
JOIN category C ON B.category_id = C.category_id
AND A.rating = 'PG'
AND C.name = 'Comedy'; */

--#12 what is the rent movie store have most revenue
/* SELECT
A.store_id,
B.address,
COUNT(*) AS totalN,
ROUND(SUM(D.amount), 2) AS totalSales
FROM store A
JOIN address B ON A.address_id = B.address_id
JOIN staff C ON A.store_id = C.store_id
JOIN payment D ON C.staff_id = D.staff_id
GROUP BY 1, 2
ORDER BY 4 DESC; */

--#13 Retrieve revenue information in 2005 compare with  2 store each mounth 
/* SELECT
A.store_id,
address,
STRFTIME('%Y%m', payment_date) AS monthId,
COUNT(*) AS totalN,
ROUND(SUM(D.amount), 2) AS totalSales
FROM store A
JOIN address B ON A.address_id = B.address_id
JOIN staff C ON A.store_id = C.store_id
JOIN payment D ON C.staff_id = D.staff_id
GROUP BY 1, 2, 3
HAVING monthId LIKE '2005%'
ORDER BY 1, 3; */

--#14 Retrieve name,address and postcode of customer do not return the movie 
/* SELECT DISTINCT
A.first_name,
A.last_name,
B.address,
B.postal_code
FROM customer A
JOIN address B ON A.address_id = B.address_id
JOIN rental C ON A.customer_id = C.customer_id
WHERE C.return_date IS NULL
ORDER BY 1; */

--#15 find movie the most of revenue for the rent movie 10 rank  
/* SELECT
film.title,
category.name,
SUM(amount) AS totalSales
FROM film
JOIN inventory USING(film_id)
JOIN rental USING(inventory_id)
JOIN payment USING(rental_id)
JOIN film_category USING(film_id)
JOIN category USING(category_id)
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */
