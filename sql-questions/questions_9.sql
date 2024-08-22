/*Q1. Compose a query to count the total number of circuits in the database using the circuitId field from the circuits table. Alias the count as totalCircuits.*/
select count(circuitId) as 'totalCircuits' from circuits;

/*Q2. Compose a query to count the total number of wins by constructors from the constructorStandings table. Use the wins field for counting and alias the count as totalWins.*/
select sum(wins) as totalWins from constructorStandings;

/*Q3. Write a query to retrieve the maximum number of points earned by a constructor. Use the points column from the constructorStandings table and alias the count as maxPoints.*/
select max(points) as maxPoints from constructorStandings;

/*Q4. Write a query to find the oldest birthday among the drivers in the drivers table. Alias the date as earliestBirthday.*/
select min(dob) as earliestBirthday from drivers;

/*Q5. Generate a SQL query to determine the average points acquired by constructors. Employ the points column within the constructorStandings table for computation and label the outcome as avgPoints.*/
select avg(points) as avgPoints from constructorStandings;

/*Q6. Craft a SQL query to find out the longest lap time recorded in the lapTimes table. Use the MAX function on the milliseconds column within the lapTimes table for summarizing, and nickname the maximum time as highestLapTime. */
select max(milliseconds) as highestLapTime from lapTimes;

/*Q7. Write a query to calculate the total points scored by constructors in a specific season. Use the SUM function on the points column in the constructorStandings table, and filter the results by a specific raceId equal to 18. Alias the total points as totalPoints.*/
select sum(points) as totalPoints from constructorStandings where raceId=18;

/*Q8. Write a query to find the youngest driver in the drivers table. Use the MAX function on the dob column in the drivers table, and alias the youngest driver as youngestDriver.*/
select max(dob) as youngestDriver from drivers;

/*Q9. Write a query to calculate the average position of constructors in a specific race. Use the AVG function on the position column in the constructorStandings table, and filter the results by a specific raceId equal to 18. Alias the average position as avgPosition.*/
select avg(position) as avgPosition from constructorStandings where raceId=18;

/*Q10. Write a query to find the total number of laps completed in all races. Use the SUM function on the laps column in the results table. Alias the total laps as totalLaps.*/
select sum(laps) as totalLaps from results;

/*Q11. In this activity, you are tasked with to write a query to provide an overview of the constructor standings with the raceId of 28. Your query should return the following columns:

Total number of constructors in the standings. Alias the count as totalConstructors.
Total number of points earned by constructors in the standings. Alias the sum as totalPoints.
Average position of constructors in the standings. Alias the average as avgPosition.
The highest position achieved by a constructor in the standings. Alias the maximum as highestPosition.
The lowest position achieved by a constructor in the standings. Alias the minimum as lowestPosition.*/
select count(constructorId) as totalConstructors , sum(points) as totalPoints, avg(position) as avgPosition, max(position) as highestPosition, min(position) as lowestPosition from constructorStandings where raceId=28;

/*Q12. Write a query to provide a summary of the results for a specific race. Use the raceId of 18 for filtering. Your query should return the following columns:

Total number of results recorded. Alias the count as totalResults.
The highest grid position. Alias the maximum as highestGridPosition.
The lowest grid position. Alias the minimum as lowestGridPosition.
Average milliseconds for completing a lap. Alias the average as avgMilliseconds.*/
select count(resultId) as totalResults,MAX(grid) as highestGridPosition,MIN(grid) as lowestGridPosition,AVG(milliseconds) as avgMilliseconds from results where raceId = 18;
