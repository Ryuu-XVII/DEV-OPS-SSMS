-- Insert Courses Data
USE CTU_StudentManagementSystem;
GO

INSERT INTO Courses (CourseName, CourseCode, Credits, LecturerID)
VALUES
    ('Introduction to Programming',   'CS101',  15, 1),
    ('Database Systems',              'CS201',  20, 1),
    ('Calculus I',                     'MATH101',15, 2),
    ('Networking Fundamentals',       'IT101',  15, 3),
    ('Data Structures & Algorithms',  'CS202',  20, 4),
    ('Web Development',               'IT201',  15, 3),
    ('Business Management',           'BUS101', 15, 5),
    ('Statistics',                     'MATH201',15, 2);
GO
