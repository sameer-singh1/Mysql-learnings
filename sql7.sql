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

