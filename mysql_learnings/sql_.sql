create table members1 (id int auto_increment,name varchar(100) not null,email varchar(255),mmsg varchar(255),primary key(id));
alter table members1 add birth_date date;
alter table members1 rename column mmsg to msg;

delimiter $$
create trigger after_members_insert2
after insert
on members1 for each row
begin
if new.birth_date is null then 
insert into members1 values (new.id,new.name,new.email,'update your date of birth',null);
end if;
end $$
delimiter ;

use sameer;
desc members2;
select * from members2;

create table members2 (id int auto_increment,name varchar(100) not null,email varchar(255),mmsg varchar(255),primary key(id));
alter table members2 add birth_date date;
alter table members2 rename column mmsg to msg;

insert into members2 values (1,'abc','a@gmail',null,'2002-01-01');
insert into members2(id,name,email,birth_date,msg) values (2,'def','b@gmail',null,null);
insert into members2(id,name,email,birth_date,msg) values (3,'ghi','c@gmail',null,'xyz');