/*indexing*/
create index a1 on members(id);

/*CTE=Common Table Expression*/
with c1 as (select * from members where name='sameer') select * from c1;