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