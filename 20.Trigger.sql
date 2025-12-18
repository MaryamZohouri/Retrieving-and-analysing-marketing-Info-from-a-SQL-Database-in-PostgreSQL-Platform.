--Trigger in SQL
--Trigger in DBMS
--A Trigger is a user-defined SQL command that is invoked automatically in response to an event such as
--insert, delete, update. We use triggers for avoiding repeating queries.
--So, that's an advance working level with SQL :)

--Triggers run only on INSERT / UPDATE / DELETE, not on SELECT.
USE Dtriger;
GO

-- Create trigger
CREATE TRIGGER age_verify
ON Customer
INSTEAD OF INSERT
AS
BEGIN
    INSERT INTO Customer (cust_id, Age, name)
    SELECT
        cust_id,
        CASE 
            WHEN Age < 0 THEN 0 
            ELSE Age 
        END,
        name
    FROM inserted;
END;
GO

-- This fires the trigger
INSERT INTO Customer (cust_id, Age, name)
VALUES (101, -30, 'Alice');
GO

-- Now you will see the effect
SELECT * FROM Customer;
GO


