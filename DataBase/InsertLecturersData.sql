-- Insert Lecturers Data
USE CTU_StudentManagementSystem;
GO

INSERT INTO Lecturers (FirstName, LastName, Email, Department)
VALUES
    ('John',    'Smith',      'john.smith@ctu.ac.za',      'Computer Science'),
    ('Sarah',   'Johnson',    'sarah.johnson@ctu.ac.za',   'Mathematics'),
    ('Michael', 'Williams',   'michael.williams@ctu.ac.za','Information Technology'),
    ('Emily',   'Brown',      'emily.brown@ctu.ac.za',     'Computer Science'),
    ('David',   'Taylor',     'david.taylor@ctu.ac.za',    'Business Studies');
GO
