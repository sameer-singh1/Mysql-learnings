/*Q1. Write a query to select only title, rental_duration, rental_rate, and replacement_cost columns from the film table where the rating is PG.*/
select title,rental_duration,rental_rate,replacement_cost from film where rating='PG';

/*Q2. Write a query to select only first_name, last_name, email, and active columns from the customer table where the active column is 0.*/
select first_name,last_name,email,active from customer where active=0;

/*Q3. Write a query to select only city, and last_update columns from the city table where country is Brazil.*/
select city ,last_update from city where country_id=15;

/*Q4. Write a query to select all the columns from the address table where the district is Texas.*/
select * from address where district='Texas'

/*Q5. Write a query to select address, district, and city_id and postal_code from the address table where the postal_code is not empty.*/
select address,district,city_id,postal_code from address where postal_code!='' 

/*Q6. Write a query to select title, rental_duration, rental_rate, and replacement_cost from the film table where the replacement_cost is less than $20.*/
select title,rental_duration,rental_rate,replacement_cost from film where replacement_cost<20;

/*Q7. Write a query to select title, rental_duration, rental_rate, and replacement_cost from the film table where the rental_duration is not equal to 4.*/
select title,rental_duration,rental_rate,replacement_cost from film where rental_duration!=4

/*Q8. Write a query to select title, rental_duration, rental_rate, and replacement_cost from the film table where the length is greater than 120.*/
select title,rental_duration,rental_rate,replacement_cost from film where length>120