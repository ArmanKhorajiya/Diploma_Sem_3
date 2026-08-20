--Practical-8

--query-1
--Create a DML After/For Trigger for INSERT event and display the message of the successful event.

create trigger lalit
on tr_demo
for insert
as 
begin
	print('inserted successfully')
end
create table tr_demo
(
	roll_no int,
	name varchar(50)
)
insert into tr_demo
values(101,'hello')

--query-2
--Create a DML After/For Trigger for the UPDATE event and display a message of the successful event.

create trigger lalit
on tr_demo
for update
as 
begin
	print('updateded successfully')
end
update tr_demo
set name='Hello World'
where roll_no=101
select * from tr_demo

--query-3 
--Create a DML After/For Trigger for the DELETE event and display the message of the successful event.

create trigger lalit
on tr_demo
for delete
as 
begin
	print('deleted successfully')
end
delete from tr_demo
where roll_no=101

--query-4
-- Create a DML After/For Trigger for All three-event using log table. 

create table DML_log_Table1
(
	event_id int identity(1,1) primary key,
	event_name varchar(20) not null,
	event_date datetime not null
)
create trigger DML_log_Tr
on tr_demo
for insert,update,delete
as
begin
	declare @InsertId int,@DeleteId int;
	select @InsertId=roll_no from inserted
	select @DeleteId=roll_no from deleted

	if(@InsertId is not null) and (@DeleteId is not null)
	begin
		Insert into DML_log_Table1
		values('Insert',GETDATE())
	end
	else if(@InsertId is not null)
	begin
		Insert into DML_log_Table1
		values('Insert',GETDATE())
	end
	else
	begin
		insert into DML_log_Table1 
		values('delete',GETDATE())
	end
end