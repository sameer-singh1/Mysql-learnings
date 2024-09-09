/*indexing*/
create index a1 on members(id);

/*CTE=Common Table Expression*/
with c1 as (select * from members where name='sameer') select * from c1;

use sameer;
select *from c1;

use cybrom;
select * from dept;

with customer_age as (select * from dept where age = 23) select id,name,age from customer_age;

with customer_in_delhi as (select * from dept where address = 'Delhi'), customers_in_mumbai as (select * from dept where address = 'Mumbai')
select id,name,address from customer_in_delhi union all select id,name,address from customers_in_mumbai; 
