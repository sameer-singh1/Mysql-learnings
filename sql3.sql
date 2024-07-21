use cybrom;
create table vns(code int, name varchar(100),address varchar(100),revenue int);
insert into vns values(0161,'BE','A-1',1000),
(0162,'MTech','B-1',1500),
(0163,'BE','C-1',500),
(0164,'BCA','D-1',2000),
(0165,'MCA','E-1',5000);
select *from vns;
select distinct name from vns;
select revenue from vns where name='BE' and address='A-1'; 
select revenue from vns where name='BE' or address='A-1';
/*find the course name of student whose revenue not belong to 1000*/
select name,revenue from vns where not revenue=1000;

/*find the revenue of vns courses in ascending order */
select revenue from vns order by revenue;

/*find the revenue of vns courses in descending order */
select revenue from vns order by revenue desc;
select name,revenue from vns order by name,revenue;

/*find the name of course in descending order whose revenue not belong to 1000*/
select name from vns where not revenue=1000 order by name desc;

/*find the name of course whose revenue less than 1500*/
select name,revenue from vns where revenue<1500;

select*from vns;
select code,name from vns where code%2=0;
select *from vns limit 3;

select *from vns limit 2 offset 3; /*offset leaves number of rows from top*/
select * from vns where name = 'BE' limit 1;

/*aggregate function- avg,count,sum,min,max*/
/*find the highest revenue from vns*/
select max(revenue) from vns;

/*find the lowest revenue from vns*/
select min(revenue) from vns;

/*find the count of revenue from vns*/
select count(revenue) from vns;

/*find the average revenue from vns*/
select avg(revenue) from vns;

/*find the sum of revenue from vns*/
select sum(revenue) from vns;

insert into vns values(166,'BTech','F-1',null);
select*from vns;
select count(revenue)from vns;

select count(name)from vns; /*null values not included in aggregate function*/
select avg(revenue)from vns;

select 5+2;
select code+revenue from vns;

/*LIKE operator*/
/*find the name of course whose first letter is B*/
select name from vns where name like 'b%';

/*find the name of course with two letters whose first letter is B*/
select name from vns where name like 'b_';

/*find the name of course with three letters*/
select name from vns where name like '___';

/*find the name of course whose last letter is E*/
select name from vns where name like '%e';

/*find the name of course whose include e */
select name from vns where name like '%e%';

/*find the name of course whose second letter c*/
select name from vns where name like '_c%';

/*find the name of course whose first letter is not B*/
select name from vns where name not like 'b%';
select*from vns;

/*find the code of btech or bca or be students*/
select code,name from vns where name='btech' or name='bca' or name='be';
select code,name from vns where name in('btech','bca','be');

/*find the code whose not belong to be and btech*/
select code,name from vns where name not in ('btech','be');

select * from mall_customer;
select customerID,age from mall_customer where age between 20 and 30;
select customerID,age from mall_customer where age not between 20 and 30;

/*find the mean age of mall customer*/
select avg(age) from mall_customer;

/*find the number of customer whose age is 30*/
select count(age) from mall_customer where age = 30;

/*find the mean age of female mall customer*/
select avg(age) from mall_customer where genre='female';

/*find the customer id whose age between 10-20*/
select customerID from mall_customer where age between 10 and 20;

/*find the minimum spending score from mall_customer*/
select min(spending_score) from mall_customer;

/*Aliases*/
select min(spending_score) as minimum from mall_customer;

select age from mall_customer;
select age as a from mall_customer;
select age as 'a' from mall_customer;

/*GROUP BY*/
select max(age) from mall_customer where genre='male';

/*find the max age of customer of each gender*/
select MAX(AGE) FROM MALL_CUSTOMER GROUP BY GENRE;
select GENRE AS GENDER,MAX(AGE) FROM MALL_CUSTOMER GROUP BY GENRE;

select * from mall_customer;

