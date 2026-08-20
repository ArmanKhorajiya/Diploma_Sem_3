----Practical-4----

----query-1
---Create a simple view Bank_View which contains only Bank_ID and Bank_Name 
create view bank_view 
as select bank_id,bank_name From bank_master
select * from bank_view

--query-2
--- Create a simple view Customer_View which contains Cust_FullName, Cust_MobileNo,Cust_EmailID
Create View customer_view 
as select cust_fullname,cust_mobileno,cust_emailid 
from customer_master
Select * from customer_view

--query-3
---Create a complex view that contains Acc_No, Cust_ID, Branch_Name, Bank_Name 
create view complex_view 
as select acc_no, cust_id, branch_name, bank_name 
from bank_master inner join branch_master 
on  bank_master.bank_id=branch_master.bank_id
inner join  account_master 
on branch_master.branch_ifsc=account_master.branch_ifsc
Select * from complex_view

--query-4
--Create a simple view with Check Option Cust_View which contains Cust_FullName,Cust_City (A)

create view cust_view
as select cust_fullname,cust_city
from customer_master
with check option 
select *from cust_view 

--query-5
--Create a sequence on the following table’s listed columns
--Bank_Master → Bank_ID, Branch_Master → Branch_ID, Employee_Master → Emp_No(A)

create sequence bank_master_seq
start with 106
increment by 1
maxvalue 120
select next value for bank_master_seq
insert into bank_master
values(next value for bank_master_seq,'abc bank','abc')

create sequence Branch_Master_abc
as int
start with 211
increment by 1
maxvalue 220
select next value for Branch_Master_abc
insert into Branch_Master(Bank_Id)
values(next value for Branch_Master_abc, 101)
select * from Branch_Master


create sequence Employee_Master_no
as int
start with 311
increment by 1
maxvalue 320
select next value for Employee_Master_no
insert into Employee_Master(Emp_Salary)
values(next value for '250000')
select * from Employee_Master

--query-6. 
--Create Synonym T_Master for Transaction_Master. (A)

create synonym T_master for transaction_master

--query-7. 
--Create a simple view Tr_View which contains Tran_ID, Tras_Acc_No those whose Tran_Type is Online. (B)

create view Tr_view
as select tran_id,tran_acc_no
from transaction_master
where tran_type='OL'

--query-8.--Create whole view of the Custome_Master table with check option for
--customer city = ‘Rajkot’ and insert data using view. (B)

create view city_master_view
as
select*from customer_master
where cust_city='Rajkot'
with check option;
insert into city_master_view(cust_city)
values('Rajkot')

--query-9.
--Create a one Table and create sequence for which contain start from 101 increment
--by 5 and maximum value is 120, minimum value is 100 and restart cycle after reach
--on maximum value. (B)

create table table_master( rollno int)
create sequence bank_master_seq1
start with 101
increment by 5
maxvalue 120
minvalue 100
cycle

insert into table_master
values(next value for bank_master_seq1)

select * from table_master

--query-10.
--Insert one value into the Employee_Master table fetch next id from using sequence.(B)

create sequence emp_master_seq
start with 106
increment by 1
maxvalue 120



--query-11. 
--Alter Tr_View that also contains Tran_Amount column. (C)

alter view Tr_view
as select tran_id,tran_acc_no
from transaction_master
where tran_type='OL'

--query-12. 
--Drop the Customer_View. (C)

drop view customer_view

--query-13.
--Drop the Employee_Master table sequence and try to insert data using sequence. (C)

drop sequence emp_master_seq