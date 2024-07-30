use sameer;
/*check constraint*/
create table person23 (ID int not null,Age int,check(Age>=18));
insert into person23 values(1,20);
insert into person23 values(2,17);

/*default constraint*/
create table person24 (ID int not null,Age int,city varchar(255) default 'Bhopal');
insert into person24 values(1,20,'indore');
insert into person24 values(2,24,'Bhopal');
insert into person24 values(3,30,default);
select * from person24;

/*current_date()*/
create table Orders(ID int not null,OrderDate datetime default current_timestamp());
insert into Orders values(1,default);
select * from Orders;

create table Orders1(ID int not null,OrderDate timestamp default current_timestamp());
insert into Orders1 values(1,default);
select * from Orders1;

/*View in sql create sub table of the table*/
create table customer(c_id int,c_name varchar(255),c_add varchar(255),c_salary int);
insert into customer values (101,'Arti','A-1',1000),(102,'Aditi','B-1',2000),(103,'Silky','C-1',15000),(104,'Deepa','D-1',5000);
select * from customer;
create view c101 as select c_id , c_name from customer;
select * from c101; 

set sql_safe_updates=0;
update c101 set c_name = 'pragati' where c_id=104;
select * from customer;
insert into c101 values(105,'Amit');

create or replace view c101 as select c_id,c_name,c_salary from customer; /*change in views*/
select * from c101;

alter table c101 add c_per int);
update customer set c_name='Amit' where c_id=102;

alter table c101 drop c_salary;
alter table customer drop c_salary;