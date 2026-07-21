-- Create Student_Courses Table (Many-to-Many relationship)
USE CTU_StudentManagementSystem;
GO

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
