--Left join: returns all the rows from the left table and matching rows from the right table.

use Tjoins
select*from Customers
select*from Orders
select c.CustomerId, c.CustomerName, c.Address, OrderDate
from Customers as c left join Orders as o
on c.OrderId=o.OrderId


--First insight to see the different between left & right joins
select c.CustomerId, c.CustomerName, c.Address, OrderDate
from Customers as c right join Orders as o
on c.OrderId=o.OrderId
--notic. in both cases right and left joins, the first table comes first and the second one later.
--But, in the left join filling the result table is by the first table(or left table). 
--for this reason, we may see some NULL cells.

select c.CustomerId, c.CustomerName, c.Address, OrderDate
from Customers as c inner join Orders as o
on c.OrderId=o.OrderId



