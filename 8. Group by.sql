-- Group by examples
-- Group by is used often with aggregation functions to group result by one or more columns.
use SAB
select*from GT

select COUNT(ID), Location from GT
group by Location

order by COUNT(ID)

-- group by and joining tables
select*from Orders

--Recall
select Location, Product, Price from GT
left join Orders on GT.ID=Orders.ID

select GT.Location, GT.Product, GT.Price, Orders.orderNumber from GT
left join Orders on GT.ID=Orders.ID

--group by and joining tables
select GT.Location, GT.Product, GT.Price, COUNT(Orders.orderNumber) from GT
left join Orders on GT.ID=Orders.ID
group by Location, Product, Price

--having is used for putting conditions when we have aggregation functions.
-- where cannot be use for aggregation functions
select*from GT
select COUNT(ID), Price from GT
group by Price
having Price>1000
