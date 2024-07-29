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

