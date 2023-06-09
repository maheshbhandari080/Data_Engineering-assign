

create table a ( ID int);
insert into a (ID) values (1),(2),(null),(3),(2),(4),(4),(6),(10)

create table b (ID int)
insert into b (ID) values (7),(null),(null),(3),(4),(4),(2),(2),(8)

select * from a inner join b on a.ID = b.ID
select * from a left join b on a.ID = b.ID 
select * from a right join b on a.ID = b.ID 
select * from a left join b on a.ID = b.ID where b.ID  IS  NULL
select * from a outer join b on a.ID = b.ID