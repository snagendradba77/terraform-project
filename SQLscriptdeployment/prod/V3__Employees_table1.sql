use Demo;
go
CREATE TABLE Employees1 (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Age INT,
    HireDate DATE
);

