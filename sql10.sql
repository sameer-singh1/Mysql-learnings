/*trigger*/

create table emp2 (name varchar(45) not null,
					working_date date,
                    working_hours varchar(10));
                    
insert into emp2 values ('tushar',2020-10-04,'12');
alter table emp2 modify working_hours int;
insert into emp2 values ('tushar',2020-10-04,12);
alter table emp2 modify working_date int;
select * from emp2;
insert into emp2 values ('tushar',2020-10-04,20);
insert into emp2 values ('pankaj',2020-10-04,24);

delimiter //
create trigger u1 before insert on emp2 for each row
begin
if new.working_hours<0 then set new.working_hours=0;
end if;
end //
delimiter ;

insert into emp2 values('arti',100,-2);
select * from emp2;
insert into emp2 values('arti',10,-5);

use sameer;
create table sales_info( id int,product varchar(100),quantity int);
insert into sales_info values(2020,'2003 Maruti Suzuki',110),(2021,'2015 Avenger',120),(2022,'2018 Honda Shine',150),(2023,'2014 Apache',150);
select * from sales_info;

/*DELIMITER $$
CREATE TRIGGER before_update_salesinfo
BEFORE UPDATE
ON sales_info FOR EACH ROW
BEGIN
DECLARE error_msg VARCHAR(255);
SET error_msg = ('The new quantity cannot be greater than 2 times the current quantity');
IF new.quantity > old.quantity * 2 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = error_msg;
end if;
END $$
DELIMITER;*/

delimiter $$
create trigger before_update_saleinfo
before update
on sales_info for each row
begin
declare error_msg varchar(255);
set error_msg=('the new quantity cannot be greater than 2 times the current quantity');
if new.quantity>old.quantity * 2 then
signal sqlstate '45000'
set message_text = error_msg;
end if;
end $$
delimiter ;

show triggers;

set sql_safe_updates=0;
update sales_info set quantity=100;

select * from sales_info;

insert into sales_info values(3,'Maruti',150),(4,'kia',250);
select * from sales_info;

show triggers;

set sql_safe_updates=0;
update sales_info set quantity = 400 where id = 3;
update sales_info set quantity = 400 where id = 4;

/*delimiter //
create trigger upd_check before update on sales_info for each row
begin
if new.quantity<0 then set new.quantity=0;
else if new.quantity > 100 then set new.quantity=100;
end if;
end //
delimiter;*/

delimiter $$
create trigger upd_check before update on sales_info
for each row
begin
if new.quantity<0 then
set new.quantity=0;
elseif new.quantity>100 then
set new.quantity=100;
end if;
end $$
delimiter ;

show triggers;

/*after trigger*/

create table members (id int auto_increment,name varchar(100) not null,email varchar(255),primary key(id));
create table reminders (id int auto_increment, memberid int, primary key(id,memberid));

alter table members add birth_date date;
alter table reminders add  message varchar(255);
desc members;
desc reminders;

delimiter $$
create trigger after_members_insert
after insert
on members for each row
begin
if new.birth_date is null then 
insert into reminders(memberid,message) values (new.id,concat('hi',new.name,'please update your date of birth'));
end if;
end $$
delimiter ;

use sameer;

desc members;
desc reminders;

show triggers;
select * from members;
select * from reminders;
insert into members(name,email,birth_date) values ('altaf','a@yahhoo.com','2024-01-01');
insert into members(name,email,birth_date) values ('baby','a@yahhoo.com',null);

insert into members(name,email,birth_date) values ('sameer1','s1@gmail.com','2002-01-01');
insert into members(name,email,birth_date) values ('arti1','a1@gmail.com','2020-01-01');

insert into members(name,email,birth_date) values ('sameer','s@gmail.com',null);
insert into members(name,email,birth_date) values ('amit','as@gmail.com',null);

