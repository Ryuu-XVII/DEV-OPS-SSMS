-- Create the CTU Student Management System Database
CREATE DATABASE CTU_StudentManagementSystem;
GO

USE CTU_StudentManagementSystem;
GO

-- Create Lecturers Table
CREATE TABLE Lecturers (
    LecturerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    Department NVARCHAR(100)
);
GO

-- Create Courses Table
CREATE TABLE Courses (
    CourseID INT IDENTITY(1,1) PRIMARY KEY,
    CourseName NVARCHAR(100) NOT NULL,
    CourseCode NVARCHAR(20) UNIQUE NOT NULL,
    Credits INT NOT NULL,
    LecturerID INT,
    FOREIGN KEY (LecturerID) REFERENCES Lecturers(LecturerID)
);
GO

-- Create Students Table
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    EnrollmentDate DATE DEFAULT GETDATE()
);
GO

-- Create Student_Courses (Many-to-Many relationship)
CREATE TABLE Student_Courses (
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE DEFAULT GETDATE(),
    Grade NVARCHAR(2),
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
GO
