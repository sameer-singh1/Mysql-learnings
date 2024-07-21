use cybrom;
create table s1 (s_id int, s_name varchar(25),s_per int);
insert into s1 values(101,'A',70),(102,'B',80),(103,'C',90);
create table c1 (c_id int, c_name varchar(25),c_per int);
insert into c1 values(1,'F',10),(2,'G',20),(3,'H',30);
select * from s1;
select * from c1;

/*union- 1. no. of col should be same,
		 2. same data type*/
         
select s_name from s1 union select c_per from c1; 
insert into c1 values (4,'A',70);

/*union operator selects only distinct values. to allow duplicate values use UNION ALL. */
select s_name from s1 union all select c_name from c1; 

