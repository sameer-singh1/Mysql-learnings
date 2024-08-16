/*Q1. Write a query to get details of circuits located in the UK from the circuits table. Retrieve the circuitId, circuitRef, name, location, country, lat and lng coordinates from the circuits table.*/
select circuitId,circuitRef,name,location,country,lat,lng from circuits where country='UK'

/*Q2. Write a query to get details of circuits that are not located in UK. Retrieve the same columns as the previous activity.*/
select circuitId,circuitRef,name,location,country,lat,lng from circuits where country!='UK'

/*Q3. Write a query to retrieve all columns from the pitStops table where the duration was longer than 20 seconds. Rename all the columns as follows: raceId, driverId, stop, lap, time, duration, milliseconds to Race_ID, Driver_ID, Stop, Lap, Time, Duration, Milliseconds.*/
select raceId as 'Race_ID' , driverId as 'Driver_ID' , stop as Stop ,lap as Lap , time as Time , duration as Duration , milliseconds as Milliseconds from pitStops where duration>20;

/*Q4. Write a query to retrieve only resultId, raceId, driverId, position and points from the results table where the position is not NULL and rename them as Result ID, Race ID, Driver ID, Position, and Points respectively.*/
select resultId as 'Result ID',raceId as 'Race ID',driverId as 'Driver ID',position as 'Position',points as 'Points' from results where position is not null

/*Q5. Write a query to retrieve all columns from the constructors table where the nationality is British.*/
select * from constructors where nationality='British';

/*Q6. Write a query to get the qualifyId, raceId, driverId, constructorId, number, and position from the qualifying table for the driver with driverId as 1.*/
select qualifyId,raceId,driverId,constructorId,number,position from qualifying where driverId=1

/*Q7. Write a query to get the constructorStandingsId, raceId, constructorId, points, position, positionText, wins from the constructorStandings table where the wins is greater than 10.*/
select constructorStandingsId,raceId,constructorId,points,position,positionText,wins from constructorStandings where wins>10

/*Q8. Write a query to return circuitId, name, and country from the circuits table where the location is Las Vegas.*/
select circuitId,name,country from circuits where location='Las vegas'

/*Q9. Write a query to return driverId, forename, dob, nationality from the drivers table where the dob is after 1980-12-31. Rename the columns as Driver ID, First Name, Date of Birth, and Nationality respectively.*/
select driverId as 'Driver ID',forename as 'First Name',dob as 'Date of Birth',nationality as 'Nationality' from drivers where dob>'1980-12-31'

/*Q10. Write a query to return raceId, name, date, time, url from the races table where the date is 2009-05-10. Rename the columns as RaceID, Race Name, Date, Time, and URL respectively.*/
select raceId as 'RaceID',name as 'Race Name',date as 'Date',time as 'Time',url as 'URL' from races where date='2009-05-10'

/*Q11. Write a query to return raceId, name, date, time, url from the races table where the year is in the year 2008.*/
select raceId,name,date,time,url from races where year=2008

/*Q12. Write a query to return resultId, raceId, driverId, constructorId, position, points, and rank from the results table where the rank is less than 5.*/
select resultId, raceId, driverId, constructorId, position, points,rank from results where rank<5;