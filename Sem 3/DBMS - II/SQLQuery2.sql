--Lab:2)

--2.1)Display Employee number, name and branch name. (A)

select  
       employee_master.emp_no,
	   employee_master.emp_fullname,
	   branch_master.branch_name
from employee_master
inner join branch_master
on employee_master.branch_ifsc = branch_master.branch_ifsc

--2.2)Display Account number, customer id, name and branch IFSC code using join. (A)

select
       account_master.acc_no,
	   customer_master.cust_id,
	   customer_master.cust_fullname,
	   account_master.branch_ifsc
from account_master
inner join customer_master
on account_master.cust_id = customer_master.cust_id

--2.3)Display Transaction ID, amount, account number, account type whose transaction type is Online. (A)

select 
      transaction_master.tran_id,
	  transaction_master.tran_amount,
	  account_master.acc_no,
	  account_master.acc_no
from transaction_master
inner join account_master
on transaction_master.tran_acc_no = account_master.acc_no
where tran_type='OL'

--2.4)Display Account number, type, transaction account number and amount using left outer join. (A)

select
       account_master.acc_no,
	   account_master.acc_type,
	   transaction_master.tran_acc_no,
	   transaction_master.tran_amount
from account_master
left outer join transaction_master
on account_master.acc_no = transaction_master.tran_acc_no

--2.5)Display Account number, type, transaction account number and amount using right outer join. (A)

select 
       account_master.acc_type,
	   account_master.acc_type,
	   transaction_master.tran_acc_no,
	   transaction_master.tran_amount
from account_master
right outer join transaction_master
on transaction_master.tran_acc_no = account_master.acc_no

--2.6)Display customer name, mobile number who has highest transaction amount. (A)

select
      customer_master.cust_fullname,
	  customer_master.cust_mobileno
from customer_master
inner join account_master
on customer_master.cust_id = account_master.cust_id
inner join transaction_master
on account_master.acc_no = transaction_master.tran_acc_no
where tran_amount = (select max(transaction_master.tran_amount) from transaction_master)

--2.7)Display Branch name, IFSC and Bank ID who has lowest paying amount employee. (A)

select 
       branch_master.branch_name,
	   branch_master.branch_ifsc,
	   branch_master.bank_id
from branch_master
inner join employee_master
on branch_master.branch_ifsc = employee_master.branch_ifsc
where emp_salary = (select min(emp_salary)from employee_master)

--2.8)Display the count of total designation of an employees. (A)

select 
       count(emp_designation),
       emp_designation
from employee_master
group by emp_designation

--2.9)Display the count of how many customers have saving account. (A)

select count(*)
from account_master
where acc_type = 'SB'


--2.10)Display details of branch master branch name wise in descending order. (A)

select * from branch_master
order by branch_name desc