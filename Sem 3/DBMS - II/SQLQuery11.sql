--Practical-11

--query-1
--Write T-SQL block to perform System Defined Exception for data type conversion Exception.

begin try
	declare @a int,@b varchar(20)='xyz'
	set @a=@b
end try
begin catch
	select ERROR_MESSAGE()as ERROR_MESSAGE,
		   ERROR_NUMBER()as ERROR_NUMBER,
		   ERROR_LINE()as ERROR_LINE,
		   ERROR_STATE()as ERROR_STATE,
		   ERROR_SEVERITY()as ERROR_SEVERITY,
		   error_procedure()as error_procedure
end catch

--query-2
--Write T-SQL block to perform System Defined Exception for divide by 0. 

begin try
	declare @a int=10,@b  int=0,@ans int;
	set @ans = @a/@b
	print @ans
end try
begin catch
	select ERROR_MESSAGE()as ERROR_MESSAGE,
		   ERROR_NUMBER()as ERROR_NUMBER,
		   ERROR_LINE()as ERROR_LINE,
		   ERROR_STATE()as ERROR_STATE,
		   ERROR_SEVERITY()as ERROR_SEVERITY,
		   error_procedure()as error_procedure
end catch

--query-3
--Write T - SQL to perform User Defined Exception. If User enter age<14 then print the error message "Child labour is not legal". 

begin try
	declare @age int = 12;
	if(@age<14)
	begin
		raiserror('child labor is not legal',16,1)
	end
	print('Age is acceptable')
end try
begin catch
	select ERROR_MESSAGE()as ERROR_MESSAGE,
		   ERROR_NUMBER()as ERROR_NUMBER,
		   ERROR_LINE()as ERROR_LINE,
		   ERROR_STATE()as ERROR_STATE,
		   ERROR_SEVERITY()as ERROR_SEVERITY,
		   error_procedure()as error_procedure
end catch

--query-4
--Write T-SQL block to generate System Defined Exception for Check constraint violation. 

create table stu_demo
(
	rollno int,
	name varchar(20),
	age int check(age>=5)
)
begin try
	insert into stu_demo
	values(101,'xyz',4)
	print('Row Inserted')
end try

begin catch
	select ERROR_MESSAGE()as ERROR_MESSAGE,
		   ERROR_NUMBER()as ERROR_NUMBER,
		   ERROR_LINE()as ERROR_LINE,
		   ERROR_STATE()as ERROR_STATE,
		   ERROR_SEVERITY()as ERROR_SEVERITY,
		   error_procedure()as error_procedure
end catch

--query-5
--Write T-SQL block to perform User Defined Exception if we try to delete data that is not available in table. 

begin try
	delete from bank_master
	where bank_id=110
	if @@rowcount=0
	begin 
		throw 50001,'record not found',1;
	end
end try
begin catch
	select ERROR_MESSAGE()as ERROR_MESSAGE,
		   ERROR_NUMBER()as ERROR_NUMBER,
		   ERROR_LINE()as ERROR_LINE,
		   ERROR_STATE()as ERROR_STATE,
		   ERROR_SEVERITY()as ERROR_SEVERITY,
		   error_procedure()as error_procedure
end catch

--query-6
--Write T – SQL block to generate System Defined Exception for primary key violation. 

begin try
	insert into bank_master(bank_id,bank_shortname)
	values(101,'SBI')
end try
begin catch
	select ERROR_MESSAGE()as ERROR_MESSAGE,
		   ERROR_NUMBER()as ERROR_NUMBER,
		   ERROR_LINE()as ERROR_LINE,
		   ERROR_STATE()as ERROR_STATE,
		   ERROR_SEVERITY()as ERROR_SEVERITY,
		   error_procedure()as error_procedure
end catch

--query-7
--Write T-SQL block to multiply three numbers and if any number is 0 then generate User Defined Exception. 

begin try
	declare @a int=0, @b int=1, @c int=2
	if(@a=0 or @b=0 or @c=0)
	begin
		throw 50001,'Invalid input',1
	end
	else
	begin 
		print(@a * @b * @c)
	end
end try
begin catch
	select ERROR_MESSAGE()as ERROR_MESSAGE,
		   ERROR_NUMBER()as ERROR_NUMBER,
		   ERROR_LINE()as ERROR_LINE,
		   ERROR_STATE()as ERROR_STATE,
		   ERROR_SEVERITY()as ERROR_SEVERITY,
		   error_procedure()as error_procedure
end catch