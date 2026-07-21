-- Create Courses Table
USE CTU_StudentManagementSystem;
GO

CREATE TABLE Courses (
    CourseID INT IDENTITY(1,1) PRIMARY KEY,
    CourseName NVARCHAR(100) NOT NULL,
    CourseCode NVARCHAR(20) UNIQUE NOT NULL,
    Credits INT NOT NULL,
    LecturerID INT,
    FOREIGN KEY (LecturerID) REFERENCES Lecturers(LecturerID)
);
GO
