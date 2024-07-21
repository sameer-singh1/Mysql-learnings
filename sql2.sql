use cybrom;
create table dept(ID int,NAME varchar(25),AGE int,ADDRESS varchar(25),SALARY int);
desc dept;
insert into dept values(1,'Ramesh',32,'Ahmedabad',2000.00),
(2,'Khilan',25,'Delhi',1500.00),
(3,'Kaushik',23,'Kota',2000.00),
(4,'Chaitali',25,'Mumbai',6500.00),
(5,'Hardik',27,'Bhopal',8500.00),
(6,'Komal',22,'Hyderabad',4500.00),
(7,'Muffy',24,'Indore',10000.00);
select *from dept;
set sql_safe_updates=0;
update dept set salary=1000;
update dept set address='Bhopal' where name='Ramesh';
select *from dept;
select name,age from dept where name='Komal';
select *from dept where name='Ramesh';
delete from dept;
select age,salary from dept where name='Komal';
delete from dept where name='Kaushik';
select *from dept;
delete from dept where age=27;
truncate table dept;