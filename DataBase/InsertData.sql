-- Insert Sample Data into CTU Student Management System
USE CTU_StudentManagementSystem;
GO

-- =============================================
-- Insert Lecturers
-- =============================================
INSERT INTO Lecturers (FirstName, LastName, Email, Department)
VALUES
    ('John',    'Smith',      'john.smith@ctu.ac.za',      'Computer Science'),
    ('Sarah',   'Johnson',    'sarah.johnson@ctu.ac.za',   'Mathematics'),
    ('Michael', 'Williams',   'michael.williams@ctu.ac.za','Information Technology'),
    ('Emily',   'Brown',      'emily.brown@ctu.ac.za',     'Computer Science'),
    ('David',   'Taylor',     'david.taylor@ctu.ac.za',    'Business Studies');
GO

-- =============================================
-- Insert Courses
-- =============================================
INSERT INTO Courses (CourseName, CourseCode, Credits, LecturerID)
VALUES
    ('Introduction to Programming',   'CS101',  15, 1),
    ('Database Systems',              'CS201',  20, 1),
    ('Calculus I',                     'MATH101',15, 2),
    ('Networking Fundamentals',       'IT101',  15, 3),
    ('Data Structures & Algorithms',  'CS202',  20, 4),
    ('Web Development',               'IT201',  3),
    ('Business Management',           'BUS101', 15, 5),
    ('Statistics',                     'MATH201',15, 2);
GO

-- =============================================
-- Insert Students
-- =============================================
INSERT INTO Students (FirstName, LastName, DateOfBirth, Email, EnrollmentDate)
VALUES
    ('Alice',   'Mokoena',  '2002-03-15', 'alice.mokoena@student.ctu.ac.za',   '2025-01-20'),
    ('Brian',   'Naidoo',   '2001-07-22', 'brian.naidoo@student.ctu.ac.za',    '2025-01-20'),
    ('Chloe',   'van Wyk',  '2003-01-10', 'chloe.vanwyk@student.ctu.ac.za',   '2025-01-20'),
    ('Daniel',  'Mthembu',  '2002-11-05', 'daniel.mthembu@student.ctu.ac.za',  '2025-01-20'),
    ('Fatima',  'Khan',     '2001-09-18', 'fatima.khan@student.ctu.ac.za',     '2025-01-20'),
    ('George',  'Pretorius','2003-05-30', 'george.pretorius@student.ctu.ac.za','2025-02-01'),
    ('Hannah',  'Dlamini',  '2002-08-12', 'hannah.dlamini@student.ctu.ac.za',  '2025-02-01'),
    ('Isaac',   'Botha',    '2001-12-25', 'isaac.botha@student.ctu.ac.za',     '2025-02-01'),
    ('Jade',    'Pillay',   '2003-04-07', 'jade.pillay@student.ctu.ac.za',     '2025-02-01'),
    ('Kyle',    'Erasmus',  '2002-06-20', 'kyle.erasmus@student.ctu.ac.za',    '2025-02-01');
GO

-- =============================================
-- Insert Student_Courses (Enrollments & Grades)
-- =============================================
INSERT INTO Student_Courses (StudentID, CourseID, EnrollmentDate, Grade)
VALUES
    -- Alice
    (1, 1, '2025-02-01', 'A'),
    (1, 3, '2025-02-01', 'B'),
    (1, 5, '2025-02-01', NULL),

    -- Brian
    (2, 1, '2025-02-01', 'B'),
    (2, 2, '2025-02-01', 'A'),
    (2, 4, '2025-02-01', 'C'),

    -- Chloe
    (3, 2, '2025-02-01', 'A'),
    (3, 6, '2025-02-01', 'B'),

    -- Daniel
    (4, 1, '2025-02-01', 'C'),
    (4, 3, '2025-02-01', 'B'),
    (4, 7, '2025-02-01', 'A'),

    -- Fatima
    (5, 4, '2025-02-01', 'A'),
    (5, 5, '2025-02-01', 'A'),
    (5, 8, '2025-02-01', 'B'),

    -- George
    (6, 1, '2025-02-15', NULL),
    (6, 6, '2025-02-15', NULL),

    -- Hannah
    (7, 2, '2025-02-15', 'B'),
    (7, 7, '2025-02-15', 'A'),

    -- Isaac
    (8, 3, '2025-02-15', 'C'),
    (8, 5, '2025-02-15', 'B'),

    -- Jade
    (9, 1, '2025-02-15', NULL),
    (9, 4, '2025-02-15', NULL),
    (9, 8, '2025-02-15', NULL),

    -- Kyle
    (10, 2, '2025-02-15', 'A'),
    (10, 7, '2025-02-15', 'B');
GO
