--How to create datbase, tables and insert values in a table directly?

create database mydb
use mydb
create table qtable
(Id int,
FirstName varchar(30),
LastName varchar(30),
Salary varchar(30),
Position varchar(50)
)

--DML: use Data Manipulation to optimize your database operations.

use mydb
select*from qtable
insert into qtable(Id, FirstName, LastName, Salary, Position)
values(1, 'Maryam', 'Zohoori', 6000, 'DataScientist'),
(2, 'Mona', 'Vasel', 5000, 'Acountant'),
(3, 'A', 'B', 7000, 'Consultant');
select*from qtable

--show all the lastnames
select LastName from qtable

--show me all the groupnames
select Position from qtable

--show me all the distinct groupnames
select distinct Position from qtable

--Filtering: show me all the Ids which are DataManager
select Id, Position from qtable where Position like 'DataManager'

--show me a list of employees who have Salary>5000
select*from qtable where Salary>5000

--Two Conditions: give me a list of employees who have salry=4500 or 5000
select*from qtable where salary in (4500,5000,6000)
--give me a list of employees who have the word Data
select*from qtable where Position like '%Data'

--give me employees who have salary between 4000 and 6000
select*from qtable where Salary between 4000 and 6000

--add value to a column
select Lastname,Salary,Salary+500 as adjusted_salary from qtable

--Example of DML commands:
--Into
--create a new table
select Lastname,Salary,Salary+500 as adjusted_salary into qtable2 from qtable
select*from qtable2
--delete data (rows) from table
delete qtable2 where Lastname like 'Nikolei'
select*from qtable2

--Update
update qtable2
set Lastname='Mast Zohoori' where Lastname like 'Zohoori'
select*from qtable2





