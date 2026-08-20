----practical-3
----query-1
--Write a T - SQL block to check whether the given number is a positive number or a
--negative number using a simple if statement.
declare @number int
set @number=-25
if(@number>0)
	begin
		print concat(@number,' is possitive');
	end
else
	begin
		print concat(@number,' is negative');
	end

-----query-2
----Write a T - SQL block to find the maximum number from the given two numbers. 
declare @n1 int,@n2 int
set @n1=100
set @n2=56
if(@n1>@n2)
	begin
		print concat(@n1,' is maximum');
	end
else
	begin
		print concat(@n2,' is maximum');
	end


-----query-3
----Write a T-SQL block to find the maximum number from the given three numbers.
declare @n1 int,@n2 int,@n3 int
set @n1=1000
set @n2=256
set @n3=150
if(@n1>@n2 and @n1>@n3)
	begin
		print concat(@n1,' is maximum');
	end
else if(@n2>@n1 and @n2>@n3)
	begin
		print concat(@n2,' is maximum');
	end
else
	begin
		print concat(@n3,' is maximum');
	end


------query-4
----Write a T - SQL block to print the first 25 natural numbers using a loop.
declare @number int,@i int
set @number=25
set @i=1
while(@i<=@number)
	begin
		print (@i);
		set @i=@i+1;
	end

----query-5
----Write a T - SQL Program to Print Odd Numbers From 1 to 100.
declare @number int,@i int
set @number=100
set @i=1
while(@i<=@number)
	begin
		if(@i%2!=0)
			begin
				print(@i);
			end
			set @i=@i+1;
	end

----query-6
---Write a T - SQL block to find the sum of the first 100 natural nos. 
declare @number int,@i int,@sum int
set @number=100
set @i=1
set @sum=0
while(@i<=@number)
	begin
		if(@i%2!=0)
			begin
				set @sum=@sum+@i;
			end
			set @i=@i+1;
	end
	print concat(' answer is:',@sum);


-----query-7
---Write a T-SQL block to find whether the number is even or odd. 
declare @number int,@i int
set @number=100
		if(@number%2!=0)
			begin
				print concat(@number,' is odd');
			end
		else
			begin
				print concat(@number,' is even');
			end

-----query-8
---Write a T - SQL block to print the first 25 Odd numbers using a loop in Reverse order.
declare @i int,@number int
set @number=1
set @i=50
while(@i>=@number)
	begin
		if(@i%2!=0)
			begin
				print(@i);
			end
			set @i=@i-1;
	end

-----query-9
/*Write a T-SQL block for given conditions: marks > 70 then Print '1st Class', marks>50
and marks<=70 then print '2nd Class', marks>=35 and marks<=50 then print '3rd
Class', marks<35 then print 'Fail !!'.*/
declare @marks int
set @marks=15
if(@marks > 70)
	begin
		 Print '1st Class'
	end
else if(@marks>50 and @marks<=70)
	begin
		 Print '2nd Class'
	end
else if(@marks>=35 and @marks<=50)
	begin
		 Print '3rd Class'
	end
else
	begin
		 Print 'Fail'`
	end