/*Q1. Frame a query to pull out all data about customers from the customer table where the active status is set as 1 (indicating that these customers are currently active.*/
select * from customer where active = 1;

/*Q2. Write a query to retrieve all the films from film table whose rental duration is greater than 4 days. Only include the title, rental_duration, and rental_rate columns in your results.*/
select title,rental_rate,rental_duration from film where rental_duration>4;

/*Q3. Write a query to retrieve all the films from film table whose release year is 2006. Only include the title, release_year, and rental_rate columns as Film Title, Release Year, and Rental Rate in your results.*/
select title as 'Film Title', release_year as 'Release Year', rental_rate as 'Rental Rate' from film where release_year=2006;

/*Q4. Write a query to retrieve all the customers from the customer table whose last name is Smith.*/
select * from customer where last_name='SMITH';

/*Q5.Write a query to retrieve all the films from film table that do not have original_language_id.*/
SELECT * FROM film WHERE original_language_id IS NULL;

/*Q6.Write a query to retrieve all the films from the film table that are rated as PG. Select film_id, title, description, release_year, and rating columns.*/
select film_id , title, description , release_year , rating from film where rating='PG';

/*Q7. Write a query to retrieve all the films from film table that contains only Commentaries in the special_features. Select film_id, title, special_features columns as Film ID, Film Title, and Special Features.*/
select film_id as 'Film ID', title as 'Film Title' , special_features as 'Special Features' from film where special_features='Commentaries';

/*Q8. Write a query to retrieve all the films from film table whose length is less than 60 minutes. Select film_id, title, length, and rental_rate columns as Film ID, Film Title, Length, and Rental Rate.*/
select film_id as 'Film ID', title as 'Film Title' , length as Length , rental_rate as 'Rental Rate' from film where length < 60;

/*Q9. Write a query to retrieve all the films from film table that have English as their language. Select all the columns from the film table.*/
select * from film where language_id = 1;

/*Q10. Write a query to retrieve all the addresses from address table whose postal code is 22474. Select address, district, city_id, and postal_code columns and alias them as Address, District, City ID, and Postal Code.*/
select address as Address , district as District , city_id AS 'City ID' , postal_code as 'Postal Code' from address where postal_code = 22474;

/*Q11. Write a query to retrieve all the cities from city table that are in the United States. Select all the columns from the city table.*/
select * from city where country_id = 103;