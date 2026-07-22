-- Normalized data extracted from image 20260722_092023.jpg
USE CTU_StudentManagementSystem;
GO

-- Insert Students (ignoring DateOfBirth as it wasn't provided in the image)
INSERT INTO Students (FirstName, LastName, Email, EnrollmentDate)
VALUES 
('KATEKA', 'NGOBENI', 'kateka@gmail.com', '2026-07-21'),
('ROBYN', 'SYKES', 'robyn@gmail.com', '2026-07-21'),
('REFILOE', 'LETUMA', 'refiloe@gmail.com', '2026-07-21');
GO

-- Insert Lecturers (Adding placeholders for missing Email/Department to satisfy constraints)
-- If a lecturer with same name already exists in the database, you may want to link directly instead.
INSERT INTO Lecturers (FirstName, LastName, Email, Department)
VALUES 
('Mr', 'Smith', 'mr.smith.img@ctu.ac.za', 'IT'),
('Ms', 'Adams', 'ms.adams.img@ctu.ac.za', 'IT'),
('Mr', 'Brown', 'mr.brown.img@ctu.ac.za', 'IT');
GO

-- Insert Courses
INSERT INTO Courses (CourseName, CourseCode, Credits, LecturerID)
VALUES 
('Database Manipulation', 'DBM101', 15, (SELECT LecturerID FROM Lecturers WHERE Email = 'mr.smith.img@ctu.ac.za')),
('Cloud Fundamentals', 'CF101', 15, (SELECT LecturerID FROM Lecturers WHERE Email = 'ms.adams.img@ctu.ac.za')),
('Programming Fundamentals', 'PF101', 15, (SELECT LecturerID FROM Lecturers WHERE Email = 'mr.brown.img@ctu.ac.za'));
GO

-- Insert Student Courses (Registration records)
INSERT INTO Student_Courses (StudentID, CourseID, EnrollmentDate, Grade)
VALUES 
((SELECT StudentID FROM Students WHERE Email = 'kateka@gmail.com'), (SELECT CourseID FROM Courses WHERE CourseName = 'Database Manipulation'), '2026-07-21', NULL),
((SELECT StudentID FROM Students WHERE Email = 'kateka@gmail.com'), (SELECT CourseID FROM Courses WHERE CourseName = 'Cloud Fundamentals'), '2026-07-21', NULL),
((SELECT StudentID FROM Students WHERE Email = 'robyn@gmail.com'), (SELECT CourseID FROM Courses WHERE CourseName = 'Programming Fundamentals'), '2026-07-21', NULL),
((SELECT StudentID FROM Students WHERE Email = 'robyn@gmail.com'), (SELECT CourseID FROM Courses WHERE CourseName = 'Database Manipulation'), '2026-07-21', NULL),
((SELECT StudentID FROM Students WHERE Email = 'refiloe@gmail.com'), (SELECT CourseID FROM Courses WHERE CourseName = 'Database Manipulation'), '2026-07-21', NULL);
GO
