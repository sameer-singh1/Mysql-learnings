use sameer;

create table sales(empname varchar(20),year int,country varchar(20),product varchar(20),sale int);

insert into sales values ('amit',2020,'india','tv',2000),
	('sameer',2100,'india','laptop',2500),
	('amit',2020,'ban','mobile',3000),
	('pooja',2100,'ban','tv',2600),
    ('amit',2020,'aus','tv',2000),
    ('arti',2100,'aus','laptop',2000);
    
select country,sum(sale) from sales group by country;

select product,country,sum(sale) over() from sales;

select product,country,sum(sale) over() from sales group by country;

select product,country,sum(sale) over(partition by country) from sales;

select product,country,sum(sale) over(partition by product) from sales;

select product,country,sum(sale) over(partition by product order by sale) from sales;
select product,country,sum(sale) over(partition by product order by sale desc) from sales;

select *,first_value(sale) over(partition by product) from sales;

select *,last_value(sale) over(partition by product) from sales;

select *, nth_value(sale,2)  over(partition by product) from sales;

/*create table student(student_number int,student_name varchar(30),subject varchar(20),marks tinyint);

insert into student values(1,'tom','cs',90),(2,'sofia','cs',80),*/

select *,row_number() over (order by sale ) from sales;

select *,rank() over (order by sale ) from sales;

select *,dense_rank() over (order by sale ) from sales;

select *,dense_rank() over (order by sale desc) from sales;

select *,rank() over (order by sale desc) from sales;

select *,lead(sale) over (partition by country) from sales;

select *,lag(sale) over (partition by country) from sales;
select * from sales;