use SP
Go
CREATE TABLE dbo.employees2 (
    emp_roll INT,
    age VARCHAR(10),
    name VARCHAR(30)
    
);
GO

CREATE TRIGGER age_verify
ON employees2
INSTEAD OF INSERT
AS
BEGIN
    INSERT INTO employees2 (emp_roll, age, name)
    SELECT
        emp_roll,
        name,
        CASE 
            WHEN age < 0 THEN 50
            ELSE age
        END
    FROM inserted;
END;
GO

INSERT INTO employees2 VALUES
(501, 10, 'Ruth'),
(502, 12, 'Mike'),
(503, 13, 'Dave'),
(504, 10, 'Jacobs');
GO

SELECT * FROM employees2;
GO

DROP TRIGGER age_verify;
GO
