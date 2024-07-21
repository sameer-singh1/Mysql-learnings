use cybrom;
create table college(Name varchar(100),Per int,Branch varchar(20));
select*from college;
insert into college values('A',70,'CS'),
('B',80,'EC'),
('C',40,'EX'),
('D',50,'CS'),
('E',90,'EC'),
('F',85,'EX'),
('G',72,'ME');
select*from college;
/*FIND the name of topper in each branch*/
select branch,max(per) from college group by branch;
select branch, name from college where (branch, per) in (select branch, max(per) from college group by branch);


/*find the no of students in each branch*/
select branch,count(*) from college group by branch;
