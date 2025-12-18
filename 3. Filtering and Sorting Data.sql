--Filtering and ordering
--Filtering is by WHERE Clause via SELECT
--Filtering by WHERE

use BAS

select * from Products

SELECT ProductName, Price
FROM Products
WHERE Price>100


--Sorting data
--It's via ORDER BY
SELECT ProductName, Price
FROM Products
ORDER BY Price DESC, ProductName ASC;

--Ex. create a table from your information. Then do some exercise about "Filter and Sort".

--Combining Filtering and Sorting
select*from Orders

SELECT CustomerName, OrderDate, TotalAmount
FROM Orders
WHERE TotalAmount>150
ORDER BY OrderDate ASC
