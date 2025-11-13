Create Database Emp;
Use emp;

CREATE TABLE Employees (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'john', 'doe'),
(2, 'aNNa', 'SMITH'),
(3, 'Raj', 'Kumar');

--  Write queries using UPPER, LOWER, SUBSTRING, CONCAT.

Select employeeID,
CONCAT(UPPER(SUBSTRING(Firstname, 1, 1)), Lower(substring(Firstname, 2)), ' ' , UPPER(SUBSTRING(Lastname, 1, 1)), Lower(substring(Lastname, 2))) AS Fullname from employees;

-- Date Functions

CREATE TABLE Employee(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    HireDate DATE
);

INSERT INTO Employee VALUES
(1, 'John Doe', '2018-04-15'),
(2, 'Anna Smith', '2020-09-10'),
(3, 'Raj Kumar', '2023-01-05');

--   Use DATE functions like YEAR(), DATEDIFF(), NOW()

Select EmployeeName, HireDate,
year(now())-year(HireDate) As Tenure_years,
Datediff(Now(),Hiredate) AS Daysworked from Employee;

-- User-defined Function
-- Create a reusable function to return full name of a student.
--  Write and test a UDF combining FirstName + LastName.

CREATE TABLE Students (
    StudentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Priya', 'Sharma'),
(2, 'Alex', 'Brown'),
(3, 'Raj', 'Kumar');

DELIMITER //

CREATE FUNCTION GetFullName(FirstName VARCHAR(50), LastName VARCHAR(50))
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    RETURN CONCAT(FirstName, ' ', LsatName);
END //
DELIMITER ;

-- Test

SELECT StudentID, GetFullName(FirstName, LastName) AS FullName
FROM Students;


