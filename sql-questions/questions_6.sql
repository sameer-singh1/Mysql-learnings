/*Q1. Count the number of actors in the actor table and rename it to Total Actor.*/
select count(*) as 'Total Actor' from actor;

/*Q2. Find out how many distinct films are available for rent in the inventory table and rename it to Total Film. Use the film_id column to find the number of distinct films.*/
select count(distinct film_id) as 'Total Film' from inventory; 

/*Q3. Determine the highest rental rate among films in the film table and rename it to Highest Rental Rate.*/
select max(rental_rate) as 'Highest Rental Rate' from film;

/*Q4. Find out the total number of movies in the inventory table and rename it to Total Inventory and use the inventory_id column to find the number of movies.*/
select count(inventory_id) as 'Total Inventory' from inventory;

/*Q5. Discover the average length of all the films in the film table and rename it to Average Length.*/
select avg(length) as 'Average Length' from film;

/*Q6. Calculate the total amount of money collected from the payment table and rename it to Total Amount. Use amount column to find the total amount of money collected.*/
select sum(amount) as 'Total Amount' from payment;

/*Q7. Determine the total number of films available for rent, but only count those with a rental duration of 5 days and rename it to Total Film.*/
select count(*) as 'Total Film' from film where rental_duration=5;

/*Q8. Calculate the average replacement cost of films, but only for films that have a rating of PG. Rename the column to Average Replacement Cost.*/
select avg(replacement_cost) as 'Average Replacement Cost' from film where rating='PG';

/*Q9. Find the date of the last film rented out using the return_date column from the rental table and rename it to Last Film.*/
select max(return_date) as 'Last Film' from rental;

/*Q10. Find the first and last payment date using the payment_date column from the payment table and rename it to First Payment and Last Payment.*/
select  min(payment_date) as 'First Payment' , max(payment_date) as 'Last Payment' from payment;

/*Q11. Find the number of copies of FAMILY SWEET in the inventory table and rename it to Copies of FAMILY SWEET.*/
select count(*) as 'Copies of FAMILY SWEET' from inventory where film_id = 301;

/*Q12. The customer ELEANOR HUNT has made most payments in the payment table. Find the number of payments made by ELEANOR HUNT and rename it to Payments by ELEANOR HUNT.*/
select count(*) as  'Payments by ELEANOR HUNT' from payment where customer_id = 148;

/*Q13. In the previous activity, we found that ELEANOR HUNT has made the most payments in the payment table. Now, find the total amount paid by ELEANOR HUNT and rename it to Total Amount Paid by ELEANOR HUNT.*/
select sum(amount) as  'Total Amount Paid by ELEANOR HUNT' from payment where customer_id = 148;

/*Q14. Find the total amount received from store with store_id 1 and rename it to Total Amount Received from Store 1. Use staff table to find staff_id. */
select sum(amount) AS 'Total Amount Received from Store 1' from payment where staff_id = 1;

/*Q15. Find the total number of customers associated with staff whose owner is Mike Hillyer and rename it to Customer's staff Mike Hillyer.*/
SELECT COUNT(*) AS "Customer\'s staff Mike Hillyer" FROM customer WHERE store_id = 1;