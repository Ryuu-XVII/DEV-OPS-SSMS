-- Create Enrollments Table
USE CTU_StudentManagementSystem;
GO

IF OBJECT_ID('dbo.Enrollments', 'U') IS NULL
BEGIN
    CREATE TABLE Enrollments (
        EnrollmentID INT IDENTITY(1,1) PRIMARY KEY,
        StudentID INT NOT NULL,
        CourseID INT NOT NULL,
        EnrollmentDate DATETIME DEFAULT GETDATE(),
        Grade NVARCHAR(5) NULL
    );

    ALTER TABLE Enrollments
    ADD CONSTRAINT FK_Enrollments_Students FOREIGN KEY (StudentID) REFERENCES Students(StudentID);

    ALTER TABLE Enrollments
    ADD CONSTRAINT FK_Enrollments_Courses FOREIGN KEY (CourseID) REFERENCES Courses(CourseID);
END
GO
