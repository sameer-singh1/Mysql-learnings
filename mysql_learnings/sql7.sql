use sameer;
create table persons ( ID int not null,LastName varchar(255) NOT NULL,FirstName varchar(255),Age int);
select * from persons;
/*constraints*/
/*1. not null*/
insert into persons values (10,'amit',null,40);
insert into persons values (11,null,'amit',50);

/*2. unique*/
alter table persons modify age int not null;
alter table persons modify Firstname varchar(255) not null;/*there is already a null value.*/
desc persons;

create table p2 (ID int not null,FirstName varchar(255), Age int, unique (ID));
select * from p2;
insert into p2 values(10,'amit',40);
insert into p2 values(11,'amit',50);
insert into p2 values(10,'anil',40);

/*Primary Key - not null,unique value*/
create table p3 (ID int,Age int, primary key (ID));
insert into p3 values(10,20);
insert into p3 values(11,null);
insert into p3 values(12,20);
insert into p3 values(10,20);
insert into p3 values(null,20); /*error*/
create table p39 (ID int,Age int, primary key (ID,Age));
select * from p3;

/*foreign key (also known as refrence key)*/
create table p4 (age int , address varchar(20), primary key (age));/*p4 is parent - can not drop p4 without droping p5*/
insert into p4 values(20,'A-1'),(30,'B-1'),(40,'C-1'),(50,'D-1');
select * from p4;

create table p5 (ID int , age int, primary key (ID),foreign key(age) references p4(age)); /*p5 is child*/
insert into p5 values(10,20),(11,30),(12,20),(13,30),(14,50);
select * from p5;
desc p5;
desc p4;
insert into p5 values(15,60); /*error because all the values in foreign key shoul be inside primary key */
insert into p5 values(15,30);
insert into p4 values(60,'E-1');
insert into p5 values(16,60); 
delete age from p4 where address = 'A-1';/*can not delete values present in child.*/
delete from p4 where address='C-1';
set sql_safe_updates=0;
delete from p4 where address='B-1';
delete from p5 where ID=11;/*we can delete any row in child*/

