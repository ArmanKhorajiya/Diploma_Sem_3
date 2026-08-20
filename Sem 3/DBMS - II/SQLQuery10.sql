--Practical-10
--Execute Dynamic Cursor

--extra

create table emp
(
	id int,
	name varchar(50),
	salary int
);
insert into emp
values(101,'Arman',10000),
	  (102,'Aman',9000),
	  (103,'Atif',8000),
	  (104,'Ahmed',7000)

select * from emp

--query-1
--Write T - SQL block to perform Dynamic cursor. 

declare @e_id int,@e_name varchar(50),@e_salary int
declare d_cursor1 cursor
dynamic
for select * from emp
open d_cursor1
fetch next from d_cursor1 into @e_id,@e_name,@e_salary
while(@@fetch_status=0)
begin
	update emp set salary=20000
	where current of d_cursor1
	print concat(@e_name,@e_salary)
	fetch next from d_cursor1 into @e_id,@e_name,@e_salary
end
close d_cursor1
deallocate d_cursor1

--query-2
--Write T- SQL block to perform Dynamic cursor that fetch value and print that value after some delay.

declare @e_id int,@e_name varchar(50),@e_salary int
declare d_cursor2 cursor
dynamic
for select * from emp
open d_cursor2
fetch next from d_cursor2 into @e_id,@e_name,@e_salary
while(@@fetch_status=0)
begin
	waitfor delay'00:00:01'
	print concat(@e_name,@e_salary)
	fetch next from d_cursor2 into @e_id,@e_name,@e_salary
end
close d_cursor2
deallocate d_cursor2