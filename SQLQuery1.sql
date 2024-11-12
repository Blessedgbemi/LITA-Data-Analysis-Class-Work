create database LITA_DB

create table Employee(staffid varchar (255) not null,
FirstName varchar (255) not null,
SecondName varchar (255),
Gender varchar (10),
Date_of_birth date,
HireDate datetime,
Primary Key (staffid)
)
select * from Employee

insert into Employee (staffid, firstname, secondname, gender, date_of_birth, hiredate)
values ( 'AB401', 'ayan', 'olakun', 'female', '1992-08-22', '2018-02-09'), 
( 'AB212', 'okorie', 'mercy', 'female', '1988-10-09', '2018-10-09'),
( 'AB223', 'joshua', 'chukwuemeka', 'male', '1980-10-09', '2022-02-09'),
( 'AB234', 'sanni', 'ibrahim', 'male', '1958-10-09', '2019-09-03'),
( 'AB254', 'mercy', 'olanipekun', 'female', '1982-10-09', '2020-02-09'),
( 'AB249', 'johnson', 'mercy', 'female', '1982-10-09', '2019-12-09'),
( 'AB298', 'ayomide', 'halleluyah', 'female', '1982-10-09', '2018-07-11'),
( 'AB260', 'deborah', 'justin', 'female', '1982-10-09', '2018-02-09'),
( 'AB281', 'wale', 'olanipekun', 'male', '1982-10-09', '2018-02-09')

...... identity in sql...........

 create table Person(
 personid int identity (1,1) primary key not null,
 personname varchar (255) not null,
 age int
 )

 insert into Person (personname, age)
 values ('paragon', '45'),
 ('adebanjo', '48'),
 ('olorunda', '56'),
 ('martha', '34'),
 ('sanni', '59'),
 ('romoke', '44'),
 ('collins', '45'),
 ('ayodele', '35')
 select * from Person

 ......insert more record into Employee.........
 insert into[dbo].[Employee]
 values ( 'AB200', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB405', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB282', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'),
( 'AB278', 'shukurat', 'lasisi', 'female','1982-10-09', '2018-02-09'),
( 'AB240', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB299', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB268', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB286', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'),
( 'AB270', 'shukurat', 'lasisi', 'female','1982-10-09', '2018-02-09')

-----to create another table call SALARY TABLE-----
CREATE TABLE Salary (
salary_id int identity(1,1) not null,
staffid varchar (255),
firstname varchar(255),
lastname varchar(255),
department nvarchar(max),
salary decimal (10, 3 )
)
select * from [dbo].[Salary]

-------insert records into salary table------

insert into salary (staffid, firstname, lastname, department, salary)

values ('AB401', 'ayan', 'olakun', 'Information Tech', 45000.45),
('AB212', 'okorie', 'mercy', 'Account', 500000.99999),
('AB223', 'joshua', 'chukwuemeka', 'Human Resources', 100560.9339999),
('AB234', 'sanni', 'ibrahim', 'Sales and Marketing', 845688.99),
('AB254', 'mercy', 'olanipekun', 'Account', 8889.999999),
('AB249', 'johnson', 'mercy', 'Information Tech', 234000.90909090),
('AB298', 'ayomide', 'halleluyah', 'Logistics', 678000.991999),
('AB260', 'deborah', 'justin', 'Logistics', 9000099.00697969),
('AB281', 'wale', 'olanipekun', 'Information Tech', 873093.2344)

-----update salary record------
insert into [dbo].[Salary]
values  ('AB200', 'ayomide', 'halleluyah', 'Human Resources',45699.8585),
( 'AB405', 'deborah', 'justin', 'Account',898349.900222),
( 'AB282', 'wale', 'olanipekun', 'Sales and Marketing',362636.564848),
( 'AB278', 'shukurat', 'lasisi', 'Logistics',100000.464647),
( 'AB240', 'johnson', 'mercy', 'Information Tech',3855590.9890093),
( 'AB299', 'ayomide', 'halleluyah', 'Account', 8585858.9292),
( 'AB268', 'deborah', 'justin', 'Human Resources',76767.93939)


----SUM, COUNT, MAX, MIN, AVERAGE---------

SELECT SUM(Salary) AS TOTALSALARY FROM Salary

select AVG(salary) as AVERAGESALARY from salary

select COUNT(staffid) as EMPLOYEECOUNT from Employee

select COUNT(staffid) as NumberofEmployee from salary

-----update------
UPDATE Salary
set salary = 7056999.9994
where staffid = 'AB401'

---------13/09/2024-------------------
-------update staff name--------------

select * from [dbo].[Employee]
update Employee
Set secondname = 'endurance'
where staffid = 'ab260'

-----update department------

select* from Salary
update Salary
set department = 'Information Tech'
where staffid = 'ab234'

update salary
set department = 'information tech'
where staffid = 'ab240'

select * from Salary
where staffid = 'ab281'

-----Create additional column into employee table-----

alter table employee
add state_of_origin varchar(50)

select * from Employee

update Employee
set state_of_origin = 'Bauchi'
where staffid = 'ab299'


-----CREATE ANOTHER TABLE CALLED PAYMENT TABLE-------

CREATE TABLE PAYMENT (
PAYMENTID INT IDENTITY (1, 1) PRIMARY KEY,
ACCOUNT_NO BIGINT NOT NULL,
STAFFID INT,
BANK VARCHAR(255) DEFAULT 'ZENITH BANK', 
PAYMENT_METHOD VARCHAR (50) CHECK(PAYMENT_METHOD = 'CASH' OR PAYMENT_METHOD = 'TRANSFER')
)
SELECT * FROM PAYMENT

ALTER TABLE PAYMENT
ALTER COLUMN STAFFID VARCHAR(30)

INSERT INTO PAYMENT (ACCOUNT_NO, STAFFID, PAYMENT_METHOD)
VALUES (2033030303, 'AB200', 'TRANSFER'),
(2034562240, 'AB254', 'CASH'),
(2234556303, 'AB212', 'TRANSFER'),
(2033037703, 'AB249', 'CASH'),
(2033030303, 'AB298', 'CASH'),
(2455657503, 'AB260', 'TRANSFER'),
(2045595953, 'AB281', 'CASH'),
(2033030303, 'AB273', 'CASH'),
(2077778903, 'AB299', 'TRANSFER'),
(2033030301, 'AB286', 'TRANSFER'),
(2123459911, 'AB260', 'TRANSFER'),
(2034562241, 'AB270', 'CASH'),
(2234556302, 'AB104', 'TRANSFER'),
(2033037705, 'AB268', 'CASH'),
(2033030306, 'AB270', 'CASH'),
(2455657509, 'AB300', 'TRANSFER')

INSERT INTO PAYMENT
VALUES (2198773830, 'AB299', 'GT BANK', 'TRANSFER'),
(2024656569, 'AB405', 'ACCESS BANK', 'CASH'),
(2222444933, 'AB200', 'FIDELITY BANK', 'TRANSFER'),
(5674842300, 'AB278', 'ACCESS BANK', 'TRANSFER'),
(2222444933, 'AB200', 'GT BANK', 'TRANSFER'),
(2034537300, 'AB278', 'ACCESS BANK', 'TRANSFER')

SELECT * FROM PAYMENT

------THOSE WHO RECEIVE THEIR SALARY BY CASH-------

SELECT * FROM PAYMENT
WHERE PAYMENT_METHOD = 'CASH'

SELECT * FROM PAYMENT
WHERE PAYMENT_METHOD = 'TRANSFER'

SELECT COUNT(*) AS ZENITHSTAFF FROM PAYMENT
WHERE BANK = 'ZENITH BANK'

SELECT COUNT(*) FROM PAYMENT
WHERE BANK = 'GT BANK'

SELECT COUNT(*) FROM PAYMENT
WHERE PAYMENT_METHOD = 'TRANSFER'

SELECT COUNT(*) FROM PAYMENT
WHERE PAYMENT_METHOD = 'CASH'

---------ANALYSIS ON EMPLOYEE-------

SELECT * FROM EMPLOYEE


SELECT COUNT(*) FROM EMPLOYEE
where state_of_origin = 'Kano'

select count(*) from Employee
where gender = 'male'

select * from Salary

select count(*) from Salary
where department = 'Human Resources'

select top 5* from Salary

select * from Salary
where salary > 700000

select staffid, salary from Salary
where salary < 700000

select max(salary) from Salary 

select min(salary) as min_salary from Salary
