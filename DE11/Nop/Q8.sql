CREATE PROCEDURE updateSalary
    @location VARCHAR(15)
AS
BEGIN
    UPDATE EMPLOYEE
    SET Salary = Salary * 1.1
    FROM EMPLOYEE E
    JOIN WORKS_ON W ON E.Ssn = W.Essn
    JOIN PROJECT P ON W.Pno = P.Pnumber AND P.Plocation = @location
    WHERE E.Salary < 30000;
END;
-- Test 
DECLARE @location VARCHAR(15)
SET @location = 'Stafford'
EXEC updateSalary @location;