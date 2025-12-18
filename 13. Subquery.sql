--Subquery.subquery is a query or nested query in a SELECT statement form embedded 
--within another SQL statement. The inner select query is usually used to determine the results of the outer query.
--Types of Subqueries: Subqueries with the SELECT, INSERT, UPDATE, DELETE statements.
--For subqueries we need the followings:
--Filtering, Aggregating: apply functions like SUM, COUNT, AVG ..., Updating: modifying data using values from other tables, Deleting: remove rows

use BAS
SELECT ProductName, Price
FROM Products
WHERE Price>(SELECT AVG(Price) FROM Products)

SELECT*FROM Products
WHERE Price=(SELECT MAX(Price) FROM Products)


use subquery
--Copy tables from one database into another database
select*into subquery.dbo.Employees
from Tjoins.dbo.Employees

select*from Employees
--Find that Who becomes the most salary?
Select Position from Employees
where Salary=(select Max(Salary) from Employees)

--Find the name of employees with maximum salary in the Employees table
select concat(FirstName, ' ', LastName) as Emp_Name
from Employees 
where Salary=(select Max(Salary) from Employees)

select FirstName, Position, Doj, Salary from Employees
where Salary<(select avg(Salary) from Employees)
--just execute inner query first.

--Find emploees name who earn more than Maryam
select concat(FirstName, ' ', LastName) as Emp_Name
from Employees
where Salary>(select Salary from employees where FirstName='Maryam')



--Insert subqueries. use the data from subquery in another query with insert
select*into subquery.dbo.Orders
from Tjoins.dbo.Orders

use subquery
select*from Orders

--? what should be Norders? 
insert into Norders
select OrderId, ProductName, PriceOfProduct from Orders
where OrderId IN (select OrderId from Orders where PriceOfProduct>5000)


--Subqueries with update statement
update Employees
set Salary=Salary*2
where Salary IN (select Salary from Employees where Salary>5000)
select*from Employees

--Subqueries with the DELETE statement
--delete employees with the salary less than 2000
delete from Employees 
where Salary IN (select Salary from Employees where Salary<2000)
select*from Employees