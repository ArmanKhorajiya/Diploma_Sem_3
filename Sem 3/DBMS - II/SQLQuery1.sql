--lab 1)

--Create database

--1)

create database bank_1091

--2.1) table bank master

create table bank_master(
bank_id int primary key,
bank_name varchar(40),
bank_shortname varchar(10)
);

--2.2) table branch master

create table branch_master(
branch_id int primary key,
branch_name varchar(40),
branch_ifsc varchar(11) unique,
bank_id int 
constraint fk_bank_id foreign key(bank_id) references bank_master(bank_id)
);

--2.3) table employee master

create table employee_master(
emp_no int primary key,
branch_ifsc varchar(11),
emp_fullname varchar(30),
emp_designation varchar(25),
emp_manager_no bigint,
emp_salary float,
constraint fk_branch_ifsc foreign key(branch_ifsc) references branch_master(branch_ifsc)
);

--2.4) table customer master

create table customer_master(
cust_id int primary key,
cust_fullname varchar(30),
cust_dob date,
cust_address varchar(80),
cust_mobileno bigint,
cust_emailid varchar(30),
cust_city varchar(20)
);

--2.5) table account master

create table account_master(
acc_no bigint primary key,
cust_id int,
acc_type varchar(7),
branch_ifsc varchar(11),
constraint fk_cust_id foreign key (cust_id)
references customer_master(cust_id) on delete cascade on update cascade,
constraint fk_acc_branch_ifsc foreign key (branch_ifsc)
references branch_master(branch_ifsc) on delete cascade on update cascade,
constraint check_acc_type check(acc_type in ('SB','CR'))
);

--2.6) table transaction master

create table transaction_master(
tran_id int primary key,
tran_acc_no bigint,
tran_date datetime,
tran_type varchar(7),
tran_amount_debit_credit varchar(6),
tran_amount float,
constraint check_tran_type check(tran_type in ('CH','CQ','OL','RG')),
constraint check_amount_d_c check (tran_amount_debit_credit in ('d','c')),
constraint fk_tran_acc_no foreign key(tran_acc_no) references account_master(acc_no) on delete cascade
);

--3)INSERT DATA

--3.1) bank master

insert into bank_master(bank_id, bank_name, bank_shortname)
values(101, 'State Bank of India', 'SBI');

insert into bank_master(bank_id, bank_name, bank_shortname)
values(102, 'bank of india', 'BOI');

insert into bank_master(bank_id, bank_name, bank_shortname)
values(103, 'Bank of baroda','BOB');

insert into bank_master(bank_id, bank_name, bank_shortname)
values(104,'Punjab national bank','PNB');

insert into bank_master(bank_id, bank_name, bank_shortname)
values(105,'Central bank of india','CBI');
select*from bank_master

--3.2) branch master

insert into branch_master(branch_id,branch_name,branch_ifsc,bank_id)
values(201,'Green Chowk,orbi','Sbi101MB201',101);

insert into branch_master(branch_id,branch_name,branch_ifsc,bank_id)
values(202,'Lati Plot,Morbi','CBI105MB203',105);

insert into branch_master(branch_id,branch_name,branch_ifsc,bank_id)
values(203,'Ravapar Road,Morbi','BOI102MB203',102);

insert into branch_master(branch_id,branch_name,branch_ifsc,bank_id)
values(204,'Kalawad Road,Rajkot','PNB104RJ204',104);

insert into branch_master(branch_id,branch_name,branch_ifsc,bank_id)
values(205,'Nanavati Chowk,Rajkot','BOB103RJ205',103);

insert into branch_master(branch_id,branch_name,branch_ifsc,bank_id)
values(206,'Lal Darwaja,Ahemdabad','BOB103AM206',103);

insert into branch_master(branch_id,branch_name,branch_ifsc,bank_id)
values(207,'Zanjat Cinema Road,Wankaner','PNB104WK207',104);

insert into branch_master(branch_id,branch_name,branch_ifsc,bank_id)
values(208,'AksharDham Road,Ahemdabad','CBI105AM208',105);

insert into branch_master(branch_id,branch_name,branch_ifsc,bank_id)
values(209,'Maharana Pratap Circle,Morbi','PNB104MB209',104);

insert into branch_master(branch_id,branch_name,branch_ifsc,bank_id)
values(210,'Race Course Ring Road,Rajkot','SBI101RJ210',101);
select*from branch_master

select*from employee_master

--3.3) employee master

insert into employee_master(emp_no,branch_ifsc,emp_fullname,emp_designation,emp_manager_no,emp_salary)
values
(301,'SBI101MB201','Shashikant Das','Bank Manager',9876543210,250000),
(302,'BOI102MB203','Dinesh Khara','Bank Manager',8765432109,45000),
(303,'BOB103AM206','Nirav Modi','Loan Officer',7654321098,36500),
(304,'CBI105AM208','Lalit Modi','Loan Officer',6543210987,70000),
(305,'PNB104MB209','P.V. Sindhu','Credit Analyst',5432109876,65300),
(306,'SBI101RJ210','Shikha Sharma','Credit Analyst',4321098765,56700),
(307,'CBI105AM208','Archana Bhargav','Audit Officer',3210987654,60000),
(308,'BOB103AM206','Arundhati Bhatt','Audit Officer',2109876543,55000),
(309,'SBI101RJ210','kalpana Moria','Finance Manager',1098765432,62500),
(310,'CBI105AM208','Atul Goel','Finance Manager',9876543201,54000)

SELECT *from customer_master

--3.4) customer master

insert into customer_master(cust_id,cust_fullname,cust_dob,cust_address,cust_mobileno,cust_emailid,cust_city)
values
(401,'C N Kanani','1985-08-20','Milap Nagar ,University Road',2134567890,'cnk@gmail.com','Gandhinagar'),
(402,'A N Siddhpura','1987-10-15','Royal Park ,Ravapar road',1243567890,'ans@gmail.com','Ahemdabad'),
(403,'V K Makwana','1987-07-04','150 Feet Ring Road',1234567890,'vkm@gmail.com','Ahemdabad'),
(404,'H K Vyas','1990-12-10','Madhapar Circle',1234567809,'hkv@gmail.com','Rajkot'),
(405,'K B Bhalodia','1996-03-25','Nanavati Chowk',1234568790,'kbb@gmail.com','Rajkot'),
(406,'N H Patel','1990-06-13','Ayodhya Chwok',1234567980,'nhp@gmail.com','Baroda'),
(407,'T D Solanki','1996-10-25','Bhaktinagar Circle',9314567820,'tds@gmail.com','Baroda'),
(408,'N H Ahuja','1994-09-15','Seth Nagar Road',1234567089,'nha@gmail.com','Jamnagar'),
(409,'B K Chattrala','1995-07-02','Trikon Baug',1234568710,'bkc@gmail.com','Jamnagar'),
(410,'A B Pandya','2000-08-20','Sanala Road',1432567890,'abp@gmail.com','Morbi')


--3.5) account master

insert into account_master(acc_no,cust_id,Acc_Type,branch_ifsc)
values
(501,401,'SB','CBI105AM208'),
(502,402,'SB','CBI105AM208'),
(503,403,'SB','BOB103AM206'),
(504,404,'CR','BOB103RJ205'),
(505,405,'SB','SBI101RJ210'),
(506,406,'CR','BOB103AM206'),
(507,407,'CR','BOB103AM206'),
(508,408,'SB','PNB104RJ204'),
(509,409,'CR','SBI101RJ210'),
(510,410,'SB','SBI101MB201')

--3.6) transaction master

insert into transaction_master(tran_id,tran_acc_no,tran_date,tran_type,tran_amount_debit_credit,tran_amount)
values
(601,501,'2022-11-22 00:00:00.000','CH','C',500000),
(602,503,'2018-10-15 00:00:00.000','CQ','D',25020),
(603,506,'2017-12-01 00:00:00.000','OL','C',200000),
(604,510,'2021-03-03 00:00:00.000','RG','D',25000),
(605,504,'2021-11-10 00:00:00.000','CH','C',65000),
(606,502,'2022-05-15 00:00:00.000','CQ','C',24571),
(607,509,'2020-01-26 00:00:00.000','OL','C',69704),
(608,507,'2009-07-04 00:00:00.000','RG','D',30000),
(609,508,'2015-10-16 00:00:00.000','CH','D',70050),
(610,505,'2022-08-20 00:00:00.000','CQ','C',26320);

