--Views in SQL. A virtual table based on the result of a select query.
--it does not store the data itself. Instead, stores the query and run it in sql.
USE views;
GO

-- Create the view
CREATE VIEW products_details AS
SELECT Name, Location, CompanyName
FROM Products
WHERE CompanyName = 'Tesla'
GO  -- <-- Important to separate batches

-- Query the view
SELECT * FROM products_details;
GO


