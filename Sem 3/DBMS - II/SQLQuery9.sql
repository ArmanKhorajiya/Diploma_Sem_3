--Practical-9
--Execute Static Cursor

--query-1
--Write T - SQL block to perform Static cursor.

declare @B_N varchar(50), @B_SN varchar(20)
declare cr_print cursor
static
for select Bank_Name,Bank_ShortName from bank_master
open cr_print
if @@cursor_rows > 0
begin
	fetch next from cr_print into @B_N ,@B_SN
	while @@fetch_status = 0
	begin
		print concat(@B_N,' is ',@B_SN)
		fetch next from cr_print into @B_N,@B_SN 
	end
end
close cr_print
deallocate cr_print

--query-2
--Write T – SQL block to perform static cursor that fetches first and last value from the result set.

declare second_cursor cursor
static 
for select * from bank_master
open second_cursor 
if @@cursor_rows > 0
begin
	fetch first from second_cursor
	fetch last from second_cursor
end
close second_cursor
deallocate second_cursor

--query-3
--Write T -SQL block to perform static cursor and try to insert/update/delete a record on the table.

declare @ID int, @Name varchar(50), @Short_Name varchar(20)
declare third_cursor cursor
static
for select * from bank_master
open third_cursor
if @@cursor_rows > 0
begin
	fetch next from third_cursor into @ID ,@Name ,@Short_Name
	while @@fetch_status = 0
	begin
		update bank_master set bank_shortname='xyz'
		where current of third_cursor
		print concat(@ID,@Name,@Short_Name)
		fetch next from third_cursor into @ID,@Name,@Short_Name 
	end
end
close third_cursor
deallocate third_cursor