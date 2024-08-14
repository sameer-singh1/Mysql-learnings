/*Q1. Select all records from city table where county code is AFG.*/
select * from city where countrycode = 'AFG';

/*Q2. Find district and country code for given population.*/
select District,CountryCode from city where population=593321;

/*Q3. Write a SQL query to select CountryCode, Language, and Percentage from table countrylanguage which contains only official languages.*/
select CountryCode,Language,Percentage from countrylanguage where isofficial='T';

/*Q4. Write a SQL query to select all records from table countrylanguage to find languages spoken in Argentina. Country code for Argentina is ARG.*/
select * from countrylanguage where countrycode='ARG';

/*Q5. Write a SQL query to select all records from table countrylanguage where language is spoken by their total population.*/
select * from countrylanguage where percentage = 100;

/*Q6. Let's find countries with non-republic government.*/
select Name,Region, GovernmentForm,HeadOfState from country where governmentform <> 'Republic';

/*Q7. Write a SQL query to select Name, Continent, Region and LifeExpectancy from table country where life-expectancy is more than 80.*/
select Name,Continent,Region,LifeExpectancy from country where lifeexpectancy>80;

/*Q8. Write a SQL query to find countries situated in Middle East region. Select Name, Continent, Region, and Population from table country.*/
select Name,Continent,Region,Population from country where region = 'Middle East';

/*Q9. Write a SQL query to find the local name of Greece. Select Name, Continent, Population, LocalName, SurfaceArea from table country.*/
select Name,Continent,Population,LocalName,SurfaceArea from country where name='Greece'

/*Q10. Write a SQL query to select all record of the city table for country India.*/
select * from city where countrycode='IND';