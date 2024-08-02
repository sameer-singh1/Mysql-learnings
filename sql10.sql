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