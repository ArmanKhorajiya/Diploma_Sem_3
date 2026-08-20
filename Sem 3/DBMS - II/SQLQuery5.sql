----PRACTICAL-5

---Extra

create function hello(
    @name varchar(50)
)
returns varchar(50)
begin
	return 'Hello World'
end 

select dbo.hello()

--query-1
--Create a function to calculate simple interest (SI=P*R*N/100).

create function simp(
@p int,
@r int,
@n int
)
returns float
as
Begin
	return (@p*@r*@n)/100;
End
select dbo.simp(10,10,10)

--query-2
--Create a function to find the feet to inch.

create function feet_to_inch(@feet int)
returns int
Begin
     return @feet*12;
End
select dbo.feet_to_inch(12)

--query-3
--Create a function to convert Celsius to Fahrenheit.

create function celsius_to_Fahrenheit(@cel float)
returns float
as
begin
     return ((@cel*9/5)+32);
end
select dbo.celsius_to_Fahrenheit(77)


--query-4
--Create a function to find factorial of a number. 

create function factorial(@number int)
returns int 
as
begin
	declare @i int,@ans int;
	set @i=1;
	set @ans=1;
	while(@number>=@i)
	begin
		set @ans=@ans*@i;
		set @i=@i+1;
	end
	return @ans
end
select dbo.factorial(3)

--query-5
--Write a function to find the sum of odd numbers between two range.


create function oddeven(@n1 int,@n2 int)
returns int 
as
begin
	declare @sum int=0;
	while(@n1<=@n2)
	begin
		if(@n1%2!=0)
		begin
			set @sum=@sum+@n1;
		end
		set @n1=@n1+1;
	end
	return @sum
end

select dbo.oddeven(1,10)