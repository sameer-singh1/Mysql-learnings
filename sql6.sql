use cybrom;
create table s1 (s_id int, s_name varchar(25),s_per int);
insert into s1 values(101,'A',70),(102,'B',80),(103,'C',90);
create table c1 (c_id int, c_name varchar(25),c_per int);
insert into c1 values(1,'F',10),(2,'G',20),(3,'H',30);
select * from s1;
select * from c1;

/*union- 1. no. of col should be same,
		 2. same data type*/
         
select s_name from s1 union select c_per from c1; 
insert into c1 values (4,'A',70);

/*union operator selects only distinct values. to allow duplicate values use UNION ALL. */
select s_name from s1 union all select c_name from c1;

insert into s1 values (104, 'D',100);

select s_id from s1 where s_per <any (select s_per from s1 where s_per = 90); 

/*find the name whose salary is greter than the salary of any customer whose age is 25 */
select * from dept;
select salary from dept where age = 32;
select name from dept where salary>2000;
select name from dept where salary>(select salary from dept where age = 32); 
select name from dept where salary>any(select salary from dept where age = 25);/*age = 25 is two times*/
/*in ANY condition atleast one condition should be true*/
select name from dept where salary>all(select salary from dept where age = 25);/*in all both condition should be true*/

/*find the name of customer whose salary is less than the avg salary of customer*/
select name from dept where salary < (select avg(salary) from dept);

select name from dept where salary>some(select salary from dept where age = 25);

select * from dept where exists (select name from dept where age = 22);