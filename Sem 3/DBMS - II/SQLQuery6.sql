--lab-6

--query 1
--Write a stored procedure to find the Factorial. 

alter procedure PR_fact(@num int)
as
begin
     declare @i int = 1, @ans int=1;
	 while(@i <= @num)
	 begin 
	      set @ans = @ans * @i;
		  set @i = @i + 1;
	 end
	 print(@ans)
end
execute PR_fact @num=5;

--query 2
--Write a stored procedure to find maximum number out of two numbers. 

alter procedure PR_max(@num int,@num2 int)
as
BEGIN
	IF(@num>@num2)
	BEGIN
	print CONCAT('maximum number is ',@num)
	END
	ELSE
	BEGIN
	print CONCAT('maximum number is ',@num2)
	END
END
execute PR_Max @num = 5 ,@num2 = 10

--query 3
--Write a stored procedure to find square of number. 

create procedure PR_sq(@num int)
as
begin
		 declare @ans int=1;
		 set @ans = @num *@num;
		 print(@ans)
end
execute PR_sq @num = 5

--query 4
--Write a stored procedure to find the sum of first 50 even numbers. 

alter procedure PR_sum50(@N1 INT, @N2 INT)
as
BEGIN
	  DECLARE @sum INT = 0,@CN INT = @N1;
    WHILE (@CN <= @N2)
    BEGIN
        IF (@CN % 2 = 0)
        BEGIN
            SET @sum = @sum + @CN;
        END
        SET @CN = @CN + 1;
    END
	print(@sum)
END
execute PR_sum50 @N1 = 1 , @N2 = 50

--query 5 
--Write a Stored Procedure that returns Total marks of 3 subjects using output parameter if
--marks of all 3 subject is >35 else return a proper message. 
create procedure x(@a int,@b int,@c int,@total int output)
as
begin
	if(@a>35 and @b>35 and @c>35)
	begin
		set @total=@a+@b+@c;
	end
	else
	begin
		print('fail');
		set @total=0;
	end
end
declare @total int
exec x 40,00,60,@total output;
print @total;