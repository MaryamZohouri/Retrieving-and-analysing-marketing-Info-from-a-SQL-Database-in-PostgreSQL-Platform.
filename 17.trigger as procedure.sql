--Trigger: is a special stored procedure that runs automatically..
use SP
Go
CREATE TABLE dbo.student (
    st_roll INT,
    age INT,
    name VARCHAR(30),
    mark FLOAT
);
GO

CREATE TRIGGER marks_verify_st
ON student
INSTEAD OF INSERT
AS
BEGIN
    INSERT INTO student (st_roll, age, name, mark)
    SELECT
        st_roll,
        age,
        name,
        CASE 
            WHEN mark < 0 THEN 50
            ELSE mark
        END
    FROM inserted;
END;
GO

INSERT INTO student VALUES
(501, 10, 'Ruth', 75),
(502, 12, 'Mike', -20.5),
(503, 13, 'Dave', 90),
(504, 10, 'Jacobs', -12.5);
GO

SELECT * FROM student;
GO

DROP TRIGGER marks_verify_st;
GO
