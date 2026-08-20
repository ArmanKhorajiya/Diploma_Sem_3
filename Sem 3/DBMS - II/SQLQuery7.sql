--practical 7--

---Create a DDL Trigger for CREATE event and display message of successful event.-----
--query-1--

create trigger tr_Name
on database
for create_table
as 
begin
	print 'table created'
end
create table Hello(id int)

---query-2---
--Create a DDL Trigger for ALTER event and display message of successful event--

alter trigger tr_Name
on database
for alter_table
as 
begin
	print 'table updated'
end
alter table Hello
alter column id float

--query-3--
--Create a DDL Trigger for DROP event and display message of successful event--

create trigger tr_Name
on database
for Drop_table
as 
begin
	print 'table Droped'
end
drop table Hello

--query-4--
--Create a DDL Trigger for All three events using log table.--

create table DDL_log_Table1
(log_id int identity(1,1) primary key,
event_name XML not null,
event_date date not null,
event_by varchar(20) not null);

create trigger DDL_log_Table1
on database
for create_table,alter_table,drop_table
as
begin
	insert into  DDL_log_Table1(event_name,event_date,event_by)
	values(EVENTDATA(),GETDATE(),User)
end
create table Hello(id int)
select * from DDL_log_Table1