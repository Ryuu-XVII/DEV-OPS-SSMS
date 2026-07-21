-- Create Tables for CTU Student Management System
-- Run this script after the database has been created
USE CTU_StudentManagementSystem;
GO

-- =============================================
-- Drop tables if they already exist (in reverse dependency order)
-- =============================================
IF OBJECT_ID('dbo.Student_Courses', 'U') IS NOT NULL DROP TABLE dbo.Student_Courses;
IF OBJECT_ID('dbo.Courses',         'U') IS NOT NULL DROP TABLE dbo.Courses;
IF OBJECT_ID('dbo.Students',        'U') IS NOT NULL DROP TABLE dbo.Students;
IF OBJECT_ID('dbo.Lecturers',       'U') IS NOT NULL DROP TABLE dbo.Lecturers;
GO

-- =============================================
-- Lecturers Table
-- =============================================
CREATE TABLE Lecturers (
    LecturerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName  NVARCHAR(50)  NOT NULL,
    LastName   NVARCHAR(50)  NOT NULL,
    Email      NVARCHAR(100) UNIQUE NOT NULL,
    Department NVARCHAR(100)
);
GO

-- =============================================
-- Courses Table
-- =============================================
CREATE TABLE Courses (
    CourseID    INT IDENTITY(1,1) PRIMARY KEY,
    CourseName NVARCHAR(100) NOT NULL,
    CourseCode  NVARCHAR(20)  UNIQUE NOT NULL,
    Credits    INT           NOT NULL,
    LecturerID INT,
    FOREIGN KEY (LecturerID) REFERENCES Lecturers(LecturerID)
);
GO

-- =============================================
-- Students Table
-- =============================================
CREATE TABLE Students (
    StudentID      INT IDENTITY(1,1) PRIMARY KEY,
    FirstName      NVARCHAR(50)  NOT NULL,
    LastName       NVARCHAR(50)  NOT NULL,
    DateOfBirth    DATE,
    Email          NVARCHAR(100) UNIQUE NOT NULL,
    EnrollmentDate DATE          DEFAULT GETDATE()
);
GO

-- =============================================
-- Student_Courses Table (Many-to-Many relationship)
-- =============================================
CREATE TABLE Student_Courses (
    StudentID      INT,
    CourseID        INT,
    EnrollmentDate DATE DEFAULT GETDATE(),
    Grade          NVARCHAR(2),
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID)  REFERENCES Courses(CourseID)
);
GO
