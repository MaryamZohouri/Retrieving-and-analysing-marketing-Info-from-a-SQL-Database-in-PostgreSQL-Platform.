--SP 
USE SAB
GO

CREATE PROCEDURE sp_sortBySalary
    @var INT
AS
BEGIN
    SELECT TOP (@var)
           name, age, salary
    FROM emp_details
    ORDER BY salary DESC
END
GO

EXEC sp_sortBySalary 3



GO

CREATE PROCEDURE sp_updateRubiSalary
AS
BEGIN
    UPDATE emp_details
    SET salary = 50000
    WHERE name = 'Rubi'
END;
GO

EXEC sp_updateRubiSalary
select*from emp_details
