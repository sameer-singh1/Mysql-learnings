/*Q1. Write a query to retrieve the number of countries from the country table. Rename the column to country_count.*/
select count(*) as country_count from country;

/*Q2. Write a query to retrieve the minimum surface area from the country table. Rename the column to min_surface_area.*/
select min(SurfaceArea) as min_surface_area from country;

/*Q3. Write a query to retrieve the maximum life expectancy from the country table. Rename the column to Max Life Expectancy.*/
select max(LifeExpectancy) as 'Max Life Expectancy' from country;

/*Q4. Write a query to retrieve the average population from the country table. Rename the column to Average Population.*/
select avg(Population) as 'Average Population' from country;

/*Q5. Write a query to retrieve the total GNP from the country table. Rename the column to Total GNP.*/
select sum(GNP) as 'Total GNP' from country;

/*Q6. Write a query to retrieve the first country from the country table. Rename the column to First Country. Use IndepYear to determine the first country.*/
select Name as "First Country" from country where IndepYear = -1523;

/*Q7. Write a query to retrieve the number of countries with a capital from the country table. Rename the column to Countries with Capital.*/
select count(*) as 'Countries with Capital' from country where capital <> '';


/*Q8. Write a query to retrieve the total population in Southern Europe from the country table. Rename the column to Total Population in Southern Europe. Use Region to determine the countries in Southern Europe.*/
select sum(population) as 'Total Population in Southern Europe' from country where region = 'Southern Europe';

/*Q9. Write a query to retrieve the average percentage of population speaking official languages from the countrylanguage table. Rename the column to Percentage Speaking Official Languages. Use IsOfficial to determine the official languages. Official languages are indicated by T.*/
select avg(Percentage) as "Percentage Speaking Official Languages" from countrylanguage where IsOfficial = 'T';

/*Q10. Write a query to retrieve the number of cities with district information from the city table. Rename the column to Cities with District Information. Use District to determine the cities with district information.*/
select count(*) as 'Cities with District Information' from city where District is not null;

/*Q11. Write a query to retrieve the total population in the United States from the city table. Rename the column to Total Population in the United States. CountryCode to determine the United States is USA.*/
select sum(Population) as 'Total Population in the United States' from city where CountryCode='USA';

/*Q12. Write a query to retrieve the total surface area of European countries from the country table. Rename the column to Total Surface Area of European Countries. Use Continent to determine the European countries(Europe) and SurfaceArea to determine the total surface area.*/
select sum(SurfaceArea) as 'Total Surface Area of European Countries' from country where continent='Europe';

/*Q13. Write a query to retrieve the maximum population density from the country table. Rename the column to Maximum Population Density. Use Population and SurfaceArea to determine the population density.*/
select max(population/SurfaceArea) as 'Maximum Population Density' from country;

/*Q14. Write a query to retrieve the maximum GNP per capita for United States from the country table. Rename the column to Maximum GNP per Capita for United States. Use GNP and Population to determine the GDP per capita. Use Code to determine the United States(USA).*/
select max(gnp/population) as 'Maximum GNP per Capita for United States' from country where code = 'USA';

/*Q15. Write a query to retrieve the total number of countries with population density not equal to 1000 from the country table. Rename the column to Total Country with Population Density Not Equal to 1000. Use Population and SurfaceArea to determine the population density.*/
select count(*) as "Total Country with Population Density Not Equal to 1000" from country where Population/SurfaceArea != 1000;