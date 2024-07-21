create database cybrom;
use cybrom;
create table student(s_id int,s_name varchar(25), s_add varchar(25));
alter table student add(roll int);
alter table student drop s_add;
alter table student modify s_name varchar(25);
alter table student add s_add varchar(20);
set sql_safe_updates=0;
desc student;
alter table student modify s_name varchar(200);
insert into student values(1,'sameer',1);
insert into student values(2,'sameer',2);
insert into student values(3,'abc',3);
insert into student values(4,'xyz',4);
insert into student values(5,'def',5);
select *from student;
insert into student values(2,'sameer','A2');

