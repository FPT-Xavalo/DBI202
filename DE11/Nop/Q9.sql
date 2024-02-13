CREATE PROCEDURE insertEmployee
    @Fname VARCHAR(15),
    @Minit CHAR,
    @Lname VARCHAR(15),
    @Ssn CHAR(9),
    @Bdate DATE,
    @Address VARCHAR(30),
    @Sex CHAR,
    @Salary DECIMAL(10, 2),
    @Super_ssn CHAR(9),
    @Dno INT
AS
BEGIN
    -- Check if the employee with the given SSN already exists
    IF NOT EXISTS (SELECT 1 FROM EMPLOYEE WHERE Ssn = @Ssn)
    BEGIN
        -- If the employee doesn't exist, insert the new employee
        INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
        VALUES (@Fname, @Minit, @Lname, @Ssn, @Bdate, @Address, @Sex, @Salary, @Super_ssn, @Dno);

        PRINT 'inserted';
    END
    ELSE
    BEGIN
        PRINT 'no insert';
    END
END;
--
EXEC insertEmployee 'Tester', 'T', 'Tester', '000111000', '2023-03-07', 'testing', 'F', 40000, '987654321', 5;