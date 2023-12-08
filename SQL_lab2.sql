use sakila;

-- 1. Select all the actors with the first name ‘Scarlett’.
Select * from actor a
WHERE first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.
Select * from actor a
WHERE last_name = 'Johansson';

-- 3. How many films (movies) are available for rent?
SELECT COUNT(inventory_id) from inventory i; 

-- 4. How many films have been rented?
SELECT COUNT(rental_id) from rental r; 

-- 5. What is the shortest and longest rental period?
SELECT MAX(rental_duration), MIN(rental_duration) from film f; 

-- 6. What are the shortest and longest movie duration? 
SELECT 
MAX(`length`)as max_duration, MIN(`length`) as min_duration 
from film f; 

-- 7. What's the average movie duration?
SELECT AVG(`length`) from film f;  

-- 8. What's the average movie duration expressed in format (hours, minutes)?
SELECT CONCAT(
    FLOOR(AVG(`length`) / 60),
    ' hours ',
    AVG(`length`) % 60,
    ' minutes'
  ) AS average_duration
FROM film;

-- 9. How many movies longer than 3 hours?
SELECT COUNT(*) As total_count
FROM film
WHERE `length` > 180;

-- 10. Get the name and email formatted.
SELECT CONCAT(
CONCAT(UPPER(SUBSTRING(first_name , 1, 1)), LOWER(SUBSTRING(first_name , 2))),
' ',
last_name,
' - ' ,
email)
from customer c;

-- 11. What's the length of the longest film title?
SELECT MAX(LENGTH(title)) from film f;




