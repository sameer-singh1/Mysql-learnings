/*Q1. Retrieve summarized information about sales orders, including the total number of orders and the highest and lowest order amounts from the SalesOrderHeader table. Use TotalDuecolumn to calculate the highest and lowest order amounts.
Rename total number of orders to TotalOrders, highest order amount to MaxOrderAmount, and lowest order amount to MinOrderAmount.*/
select count(*) as 'TotalOrders',Min(TotalDue) as 'MinOrderAmount' , Max(TotalDue) as MaxOrderAmount from SalesOrderHeader;

/*Q2. Retrieve details of products with a ListPrice higher than $1000.0 from the Product table. Select only Name as Product Name, StandardCost and ListPrice columns.*/
SELECT Name as 'Product Name',StandardCost,ListPrice FROM 'Product' where ListPrice>1000;

/*Q3. Calculate the total value of all orders in the SalesOrderHeader table and rename the column to Total Order Value. Use TotalDue column to calculate the total order value.*/
SELECT sum(TotalDue) as 'Total Order Value' FROM 'SalesOrderHeader';

/*Q4. Calculate the average order quantity using OrderQty column from the SalesOrderDetail table. Rename the column to Average Order Quantity.*/
select avg(OrderQty) as 'Average Order Quantity' from SalesOrderDetail;

/*Q5. Count the number of unique states using StateProvince column from the Address table. Rename the column to Unique State Count.*/
select count(distinct StateProvince) as 'Unique State Count' from Address;

/*Q6. Retrieve the names of all cities that do not have an AddressLine2 value. Use City column for names of cities from the Address table.*/
select City from Address where Addressline2='';

/*Q7. Write a query to select the distinct company names for all customer records created in August. Select only CompanyName as Distinct Company Name and ModifiedDate columns from the Customer table.*/
SELECT distinct CompanyName as 'Distinct Company Name',ModifiedDate FROM 'Customer' where strftime('%m',ModifiedDate)='08';

/*Q8. Retrieve the count of distinct address types from the CustomerAddress table. Rename the column to Address Type Count. Use AddressType column to count the distinct address types.*/
select count(distinct AddressType) as 'Address Type Count' from customeraddress;

/*Q9. Write a query to find the longest song in the Track table. Select TrackId, Name and Milliseconds columns from table Track. Use Milliseconds column to find the longest song in the Track table and rename the column to LongestSongLength.*/
SELECT TrackId,Name,max(Milliseconds) as 'LongestSongLength' FROM 'Track';

/*Q10. Write a query to calculate the average total amount for all invoices from Invoice table. Rename the column to Average Total Amount.*/
SELECT avg(total) as 'Average Total Amount' FROM 'Invoice';

/*Q11. Write a query to find the minimum and maximum invoice total using Total column from the Invoice table. Rename the columns to Minimum Invoice Total and Maximum Invoice Total respectively.*/
SELECT min(total) as 'Minimum Invoice Total' , max(total) as 'Maximum Invoice Total' FROM 'Invoice';

/*Q12. Write a query to calculate the average unit price of all tracks using UnitPrice column from the Track table. Rename the column to Average Unit Price.*/
SELECT avg(UnitPrice) as 'Average Unit Price' FROM 'Track';

/*Q13. Write a query to find the latest hire date among all employees using HireDate column from the Employee table. Rename the column to Latest Hire Date.*/
SELECT max(HireDate) as 'Latest Hire Date' FROM 'Employee';