/*Q1. Craft a query to extract the first and last names of customers earning above $50,000. Utilize the INCOME field from the CUSTOMERS table to refine your search.*/
select FIRSTNAME,LASTNAME from CUSTOMERS where income>50000;

/*Q2. Compose a query to fetch the first names, last names, and usernames of customers under 25 years of age. Reference the AGE field in the CUSTOMERS table to sieve through the data.*/
SELECT FIRSTNAME,LASTNAME,USERNAME FROM CUSTOMERS WHERE AGE<25;

/*Q3. Create a query to obtain the first names, last names, and usernames of customers residing in Arizona (AZ). Filter your data by employing the STATE field within the CUSTOMERS table.*/
SELECT FIRSTNAME,LASTNAME,USERNAME FROM CUSTOMERS WHERE STATE='AZ';

/*Q4. Dig into the details of orders that contain only a few items. Write a query to find all orders in the ORDERLINES table where no more than 2 products were purchased. Select the ORDERID, the QUANTITY of the products, and the ORDERDATE for each of these small orders.*/
SELECT ORDERID,QUANTITY,ORDERDATE FROM ORDERLINES WHERE QUANTITY<3;

/*Q5. Discover which products in our catalog are considered high-end based on their price point. Extract the PROD_ID, TITLE, and PRICE for every product in the PRODUCTS table that is priced over $20.*/
SELECT PROD_ID,TITLE,PRICE FROM PRODUCTS WHERE PRICE>20;

/*Q6. Pave the way to understanding customer satisfaction by extracting details on only the highest-rated products. Craft a query to fetch the REVIEW_ID, PROD_ID, the perfect STARS rating, and the REVIEW_DATE for each review from the REVIEWS table that has earned the maximum of 5 stars.*/
SELECT REVIEW_ID,PROD_ID,STARS,REVIEW_DATE FROM REVIEWS WHERE STARS=5;

/*Q7. Evaluate our customers' contributions by filtering for highly helpful reviews. Write a query that retrieves the REVIEW_ID and CUSTOMERID for each piece of feedback in the REVIEWS_HELPFULNESS table deemed exceptionally helpful, indicated by a HELPFULNESS score above 8.*/
SELECT REVIEW_ID,CUSTOMERID FROM REVIEWS_HELPFULNESS WHERE HELPFULNESS>8;

/*Q8. Find and present the exclusive selection of products that are available as part of a tier 3 membership. Formulate a query that fetches the PROD_ID, TITLE, and PRICE for each product where the MEMBERSHIP_ITEM equals 3 in the PRODUCTS table.*/
SELECT PROD_ID,TITLE,PRICE FROM PRODUCTS WHERE MEMBERSHIP_ITEM=3;

/*Q9. Write a query to get the CUSTOMERID, FIRSTNAME, LASTNAME, and GENDER of all customers where the GENDER is equal to M. Use the GENDER column in the CUSTOMERS table to filter the data.*/
SELECT CUSTOMERID,FIRSTNAME,LASTNAME,GENDER FROM CUSTOMERS WHERE GENDER='M';

/*Q10. Write a query to get the PROD_ID, TITLE, and PRICE of all products where the CATEGORY is equal to Action. Use the CATEGORY column in the PRODUCTS table to filter the data. You've to use category number instead of category name to filter the data.*/
SELECT PROD_ID,TITLE,PRICE FROM PRODUCTS WHERE CATEGORY=1;

/*Q11. Table INVENTORY contains information about the number of products in stock and their sales. Write a query to find the product ID which have zero quantity in stock.*/
SELECT PROD_ID FROM INVENTORY WHERE QUAN_IN_STOCK=0;

/*Q12. In the previous activity, you identified the products with no current inventory. Now, you will fetch the details 3rd product of the previous activity result. Retrieve only the PROD_ID, TITLE, and PRICE columns from the PRODUCTS table.*/
SELECT PROD_ID,TITLE,PRICE FROM PRODUCTS WHERE PROD_ID=1038;

/*Q13. Write a query to get the REVIEW_ID, CUSTOMERID, PROD_ID, and STARS of all reviews of the first customer who does not live in US. Use the COUNTRY column in the CUSTOMERS table to filter the data.*/
SELECT REVIEW_ID,CUSTOMERID,PROD_ID,STARS FROM REVIEWS WHERE CUSTOMERID=10001;