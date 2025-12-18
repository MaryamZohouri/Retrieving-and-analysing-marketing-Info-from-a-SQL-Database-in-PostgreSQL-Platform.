use Tjoins
select*from Employees

select concat(FirstName, ' ', LastName) as Name, Position, City, Salary, o.ProductName
from Employees 
left join Orders as o
on Employees.Id = o.OrderId

select concat(FirstName, ' ', LastName) as Name, Position, City, Salary, o.ProductName
from Employees 
right join Orders as o
on Employees.Id = o.OrderId

