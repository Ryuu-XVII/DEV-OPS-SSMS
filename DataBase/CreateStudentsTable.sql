-- Create Students Table
USE CTU_StudentManagementSystem;
GO

CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    EnrollmentDate DATE DEFAULT GETDATE()
);
GO
