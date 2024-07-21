use cybrom;
create table student1(name varchar(100),s_id int);
insert into student1 values('A',101),('B',102),('C',103),('D',104),('E',105);
select*from student1;

/*inner join*/
/*find the student id of student1 who got 40%*/
select s_id,college.name from student1 inner join college on student1.name=college.name where per=40;

/*left join*/
select * from student1 left join college on student1.name=college.name;

/*right join*/
select * from student1 right join college on student1.name=college.name;

/*cross join*/
select * from student1 cross join college;

/*natural join*/
/*equi join*/
/*full join*/ /*these 3 join does not support in mysql*/

/*self join*/
create table customer(c_id int,c_name varchar(100),city varchar (100));

insert into customer values (101, 'amit','bhopal'),(102, 'sumit','indore'),(103, 'sunil','bhopal'),(104, 'surya','indore');

select a.c_name,b.c_name,a.city from customer a ,customer b where a.c_id <> b.c_id and a.city=b.city;
select count(*),city from customer group by city;
select count(*),city from customer where city='bhopal' group by city;
insert into customer values(105,'sameer','bhopal');


select * from customer;

/*find the city who has more than 2 customer*/

select count(c_id),city from customer group by city having count(c_id)>2;



