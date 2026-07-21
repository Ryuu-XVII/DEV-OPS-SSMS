-- Insert Students Data
USE CTU_StudentManagementSystem;
GO

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
