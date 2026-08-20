--Practical-12

--query-1
--Perform queries for SAVEPOINT, ROLLBACK and COMMIT commands on the Customer_Master table. 

begin tran t1
update customer_master set cust_city='Rajkot'
where cust_id=401
save tran update_point      
insert into customer_master
values(413,'H K Vyas','1990-12-10','Madhapar Circle',1234567809,'hkv@gmail.com','Rajkot')
save tran insert_point
rollback tran update_point
commit
select * from customer_master

--query-2
--Perform queries for GRANT and REVOKE command on Employee_Master. 

create login userb2 with password = 'user@1234'
create user testuserb2 for login userb2
grant select,update on employee_master to testuserb2
select * from employee_master

revoke select,update
on employee_master
from testuserb2

--query-3
--Perform queries for SAVEPOINT, ROLLBACK and COMMIT commands on the Transaction_Master table. 

begin tran t2
update transaction_master set tran_amount=10000
where tran_id=601
save tran update_point
insert into transaction_master
values(611,501,'2022-11-22 00:00:00.000','CH','C',500000)
save tran insert_point
rollback tran update_point
commit 
select * from transaction_master

--query-4
--Perform queries for GRANT and REVOKE commands on the Account_Master table.

grant select,update on account_master to testuserb2 with grant option 
revoke select,update on account_master from testuserb2 cascade