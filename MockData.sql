--MockData

-- 1. Students: HE18xxxx (10 students)
INSERT INTO Student (StudentID, FullName, Email, PasswordHash, DOB, Gender) VALUES
('HE180001', 'An Nguyen', 'an.nguyen@fpt.edu.vn', 'hash001', '2003-01-15', 'Male'),
('HE180002', 'Binh Tran', 'binh.tran@fpt.edu.vn', 'hash002', '2003-03-22', 'Female'),
('HE180003', 'Cuong Le', 'cuong.le@fpt.edu.vn', 'hash003', '2003-05-10', 'Male'),
('HE180004', 'Dung Pham', 'dung.pham@fpt.edu.vn', 'hash004', '2003-07-08', 'Female'),
('HE180005', 'Em Hoang', 'em.hoang@fpt.edu.vn', 'hash005', '2003-02-28', 'Male'),
('HE180006', 'Phuong Vo', 'phuong.vo@fpt.edu.vn', 'hash006', '2003-04-18', 'Female'),
('HE180007', 'Giang Dang', 'giang.dang@fpt.edu.vn', 'hash007', '2003-06-25', 'Male'),
('HE180008', 'Hoa Nguyen', 'hoa.nguyen@fpt.edu.vn', 'hash008', '2003-08-12', 'Female'),
('HE180009', 'Inh Tran', 'inh.tran@fpt.edu.vn', 'hash009', '2003-09-30', 'Male'),
('HE180010', 'Kim Le', 'kim.le@fpt.edu.vn', 'hash010', '2003-11-05', 'Female');

-- 2. Instructors
INSERT INTO Instructor (InstructorID, FullName, Email, PasswordHash) VALUES
('GV001', 'Hung Nguyen', 'hung.nv@fpt.edu.vn', 'hash_gv001'),
('GV002', 'Lan Tran', 'lan.tt@fpt.edu.vn', 'hash_gv002'),
('GV003', 'Minh Le', 'minh.lv@fpt.edu.vn', 'hash_gv003'),
('GV004', 'Nga Pham', 'nga.pt@fpt.edu.vn', 'hash_gv004'),
('GV005', 'On Hoang', 'on.hv@fpt.edu.vn', 'hash_gv005');

-- 3. Semesters
INSERT INTO Semester (SemesterID, Name, StartDate, EndDate) VALUES
('SP24', 'Spring 2024', '2024-01-10', '2024-05-30'),
('SU24', 'Summer 2024', '2024-06-15', '2024-09-20'),
('FA24', 'Fall 2024', '2024-09-25', '2025-01-15'),
('SP25', 'Spring 2025', '2025-01-20', '2025-05-30'),
('SU25', 'Summer 2025', '2025-06-15', '2025-09-20'),
('FA25', 'Fall 2025', '2025-09-25', '2026-01-15');

-- 4. Subjects (10 subjects, code as FPTU)
INSERT INTO Subject (SubjectID, Title, Credit) VALUES
('PRN212', 'Basic C# Programming', 3),
('PRF192', 'Fundamental Programming with C', 3),
('MAD101', 'Discrete Mathematics', 3),
('DBI202', 'Database Systems', 3),
('OSG202', 'Operating Systems', 3),
('NWC203', 'Computer Networks', 3),
('SWE201', 'Introduction to Software Engineering', 3),
('JPD123', 'Basic Java Programming', 3),
('WED201', 'Web Design', 3),
('MAS291', 'Applied Statistics', 3);

-- 5. Grade Items (for PRN212, DBI202, MAD101, OSG202, NWC203, SWE201; you can add more for others)
INSERT INTO Grade_Item (Title, Rate, SubjectID) VALUES
-- PRN212
('Attendance', 10, 'PRN212'), ('Assignment', 20, 'PRN212'), ('Test', 30, 'PRN212'), ('Final', 40, 'PRN212'),
-- DBI202
('Lab', 20, 'DBI202'), ('Midterm', 30, 'DBI202'), ('Final', 50, 'DBI202'),
-- MAD101
('Midterm', 40, 'MAD101'), ('Final', 60, 'MAD101'),
-- OSG202
('Lab', 25, 'OSG202'), ('Midterm', 25, 'OSG202'), ('Final', 50, 'OSG202'),
-- NWC203
('Test', 40, 'NWC203'), ('Final', 60, 'NWC203'),
-- SWE201
('Project', 30, 'SWE201'), ('Final', 70, 'SWE201');

-- 6. Courses (sections for each subject/semester/instructor)
INSERT INTO Course (CourseID, Title, SubjectID, InstructorID, SemesterID, StartDate) VALUES
('PRN212_SP24_01', 'Basic C# Programming - Class 01', 'PRN212', 'GV001', 'SP24', '2024-01-12'),
('PRN212_SP24_02', 'Basic C# Programming - Class 02', 'PRN212', 'GV005', 'SP24', '2024-01-12'),
('DBI202_SP24_01', 'Database Systems - Class 01', 'DBI202', 'GV002', 'SP24', '2024-01-13'),
('MAD101_SP24_01', 'Discrete Mathematics - Class 01', 'MAD101', 'GV004', 'SP24', '2024-01-14'),
('OSG202_SU24_01', 'Operating Systems - Class 01', 'OSG202', 'GV004', 'SU24', '2024-06-16'),
('NWC203_SU24_01', 'Computer Networks - Class 01', 'NWC203', 'GV004', 'SU24', '2024-06-17'),
('SWE201_SU24_01', 'Introduction to Software Engineering - Class 01', 'SWE201', 'GV005', 'SU24', '2024-06-18');

-- 7. Student_Semester_Subject (students registered for subjects/semester)
INSERT INTO Student_Semester_Subject (StudentID, SemesterID, SubjectID) VALUES
-- SP24: PRN212, DBI202, MAD101
('HE180001', 'SP24', 'PRN212'), ('HE180001', 'SP24', 'DBI202'), ('HE180001', 'SP24', 'MAD101'),
('HE180002', 'SP24', 'PRN212'), ('HE180002', 'SP24', 'DBI202'), ('HE180002', 'SP24', 'MAD101'),
('HE180003', 'SP24', 'PRN212'), ('HE180003', 'SP24', 'DBI202'), ('HE180003', 'SP24', 'MAD101'),
('HE180004', 'SP24', 'PRN212'), ('HE180004', 'SP24', 'DBI202'), ('HE180004', 'SP24', 'MAD101'),
('HE180005', 'SP24', 'PRN212'), ('HE180005', 'SP24', 'DBI202'), ('HE180005', 'SP24', 'MAD101'),
('HE180006', 'SP24', 'PRN212'), ('HE180007', 'SP24', 'PRN212'), ('HE180008', 'SP24', 'PRN212'),
('HE180009', 'SP24', 'PRN212'), ('HE180010', 'SP24', 'PRN212');

-- SU24: OSG202, NWC203, SWE201
INSERT INTO Student_Semester_Subject (StudentID, SemesterID, SubjectID) VALUES
('HE180001', 'SU24', 'OSG202'), ('HE180001', 'SU24', 'NWC203'), ('HE180001', 'SU24', 'SWE201'),
('HE180002', 'SU24', 'OSG202'), ('HE180002', 'SU24', 'NWC203'), ('HE180002', 'SU24', 'SWE201'),
('HE180003', 'SU24', 'OSG202'), ('HE180003', 'SU24', 'NWC203'), ('HE180003', 'SU24', 'SWE201'),
('HE180004', 'SU24', 'OSG202'), ('HE180005', 'SU24', 'NWC203'), ('HE180005', 'SU24', 'OSG202'),
('HE180006', 'SU24', 'NWC203'), ('HE180007', 'SU24', 'OSG202'), ('HE180008', 'SU24', 'SWE201'),
('HE180009', 'SU24', 'SWE201'), ('HE180010', 'SU24', 'NWC203');

-- 8. Student_Course (students enrolled in sections)
-- PRN212_SP24_01
INSERT INTO Student_Course (StudentID, CourseID) VALUES
('HE180001', 'PRN212_SP24_01'), ('HE180002', 'PRN212_SP24_01'), ('HE180003', 'PRN212_SP24_01'),
('HE180004', 'PRN212_SP24_01'), ('HE180005', 'PRN212_SP24_01'), ('HE180006', 'PRN212_SP24_01'), ('HE180007', 'PRN212_SP24_01'),
-- PRN212_SP24_02
('HE180008', 'PRN212_SP24_02'), ('HE180009', 'PRN212_SP24_02'), ('HE180010', 'PRN212_SP24_02'),
-- DBI202_SP24_01
('HE180001', 'DBI202_SP24_01'), ('HE180003', 'DBI202_SP24_01'), ('HE180005', 'DBI202_SP24_01'),
('HE180007', 'DBI202_SP24_01'), ('HE180009', 'DBI202_SP24_01'),
-- MAD101_SP24_01
('HE180002', 'MAD101_SP24_01'), ('HE180004', 'MAD101_SP24_01'), ('HE180006', 'MAD101_SP24_01'),
('HE180008', 'MAD101_SP24_01'), ('HE180010', 'MAD101_SP24_01');

-- 9. Mark data (PRN212_SP24_01, GradeID: Attendance=1, Assignment=2, Test=3, Final=4)
INSERT INTO Mark (StudentID, CourseID, GradeID, Value, Reason) VALUES
('HE180001', 'PRN212_SP24_01', 1, 9.0, NULL), ('HE180001', 'PRN212_SP24_01', 2, 8.5, NULL), ('HE180001', 'PRN212_SP24_01', 3, 8.0, NULL), ('HE180001', 'PRN212_SP24_01', 4, 8.5, NULL),
('HE180002', 'PRN212_SP24_01', 1, 8.5, NULL), ('HE180002', 'PRN212_SP24_01', 2, 7.5, NULL), ('HE180002', 'PRN212_SP24_01', 3, 7.0, NULL), ('HE180002', 'PRN212_SP24_01', 4, 7.5, NULL),
('HE180003', 'PRN212_SP24_01', 1, 9.5, NULL), ('HE180003', 'PRN212_SP24_01', 2, 9.0, NULL), ('HE180003', 'PRN212_SP24_01', 3, 8.5, NULL), ('HE180003', 'PRN212_SP24_01', 4, 9.0, NULL),
('HE180004', 'PRN212_SP24_01', 1, 7.0, NULL), ('HE180004', 'PRN212_SP24_01', 2, 6.5, NULL), ('HE180004', 'PRN212_SP24_01', 3, 6.0, NULL), ('HE180004', 'PRN212_SP24_01', 4, 6.5, NULL),
('HE180005', 'PRN212_SP24_01', 1, 8.0, NULL), ('HE180005', 'PRN212_SP24_01', 2, 7.0, NULL), ('HE180005', 'PRN212_SP24_01', 3, 7.5, NULL), ('HE180005', 'PRN212_SP24_01', 4, 8.0, NULL),
('HE180006', 'PRN212_SP24_01', 1, 7.5, NULL), ('HE180006', 'PRN212_SP24_01', 2, 7.0, NULL), ('HE180006', 'PRN212_SP24_01', 3, 7.0, NULL), ('HE180006', 'PRN212_SP24_01', 4, 7.5, NULL),
('HE180007', 'PRN212_SP24_01', 1, 8.5, NULL), ('HE180007', 'PRN212_SP24_01', 2, 8.0, NULL), ('HE180007', 'PRN212_SP24_01', 3, 7.5, NULL), ('HE180007', 'PRN212_SP24_01', 4, 8.0, NULL);

-- PRN212_SP24_02
INSERT INTO Mark (StudentID, CourseID, GradeID, Value, Reason) VALUES
('HE180008', 'PRN212_SP24_02', 1, 8.5, NULL), ('HE180008', 'PRN212_SP24_02', 2, 8.0, NULL), ('HE180008', 'PRN212_SP24_02', 3, 7.5, NULL), ('HE180008', 'PRN212_SP24_02', 4, 8.0, NULL),
('HE180009', 'PRN212_SP24_02', 1, 4.0, NULL), ('HE180009', 'PRN212_SP24_02', 2, 3.5, NULL), ('HE180009', 'PRN212_SP24_02', 3, 3.0, NULL), ('HE180009', 'PRN212_SP24_02', 4, 3.5, NULL),
('HE180010', 'PRN212_SP24_02', 1, 7.5, NULL), ('HE180010', 'PRN212_SP24_02', 2, 7.0, NULL), ('HE180010', 'PRN212_SP24_02', 3, 6.5, NULL), ('HE180010', 'PRN212_SP24_02', 4, 7.0, NULL);

-- DBI202_SP24_01 (GradeID: Lab=5, Midterm=6, Final=7)
INSERT INTO Mark (StudentID, CourseID, GradeID, Value, Reason) VALUES
('HE180001', 'DBI202_SP24_01', 5, 8.5, NULL), ('HE180001', 'DBI202_SP24_01', 6, 8.0, NULL), ('HE180001', 'DBI202_SP24_01', 7, 8.5, NULL),
('HE180003', 'DBI202_SP24_01', 5, 9.0, NULL), ('HE180003', 'DBI202_SP24_01', 6, 8.5, NULL), ('HE180003', 'DBI202_SP24_01', 7, 9.5, NULL),
('HE180005', 'DBI202_SP24_01', 5, 7.0, NULL), ('HE180005', 'DBI202_SP24_01', 6, 6.5, NULL), ('HE180005', 'DBI202_SP24_01', 7, 7.5, NULL),
('HE180007', 'DBI202_SP24_01', 5, 6.5, NULL), ('HE180007', 'DBI202_SP24_01', 6, 6.0, NULL), ('HE180007', 'DBI202_SP24_01', 7, 6.0, NULL),
('HE180009', 'DBI202_SP24_01', 5, 5.0, NULL), ('HE180009', 'DBI202_SP24_01', 6, 4.5, NULL), ('HE180009', 'DBI202_SP24_01', 7, 4.5, NULL);

-- MAD101_SP24_01 (GradeID: Midterm=8, Final=9)
INSERT INTO Mark (StudentID, CourseID, GradeID, Value, Reason) VALUES
('HE180002', 'MAD101_SP24_01', 8, 8.0, NULL), ('HE180002', 'MAD101_SP24_01', 9, 8.5, NULL),
('HE180004', 'MAD101_SP24_01', 8, 6.0, NULL), ('HE180004', 'MAD101_SP24_01', 9, 6.5, NULL),
('HE180006', 'MAD101_SP24_01', 8, 9.5, NULL), ('HE180006', 'MAD101_SP24_01', 9, 9.0, NULL),
('HE180008', 'MAD101_SP24_01', 8, 7.5, NULL), ('HE180008', 'MAD101_SP24_01', 9, 8.0, NULL),
('HE180010', 'MAD101_SP24_01', 8, 5.5, NULL), ('HE180010', 'MAD101_SP24_01', 9, 5.0, NULL);

-- Example: Reason for mark change
UPDATE Mark SET Value = 8.7, Reason = 'Regraded final upon student request' WHERE StudentID = 'HE180001' AND CourseID = 'PRN212_SP24_01' AND GradeID = 4;