-- Tạo database (nếu chưa có)
-- CREATE DATABASE Student_Mark_Management;
-- GO
-- USE Student_Mark_Management;
-- GO

-- Bảng Sinh viên
CREATE TABLE Student (
    StudentID    VARCHAR(10) PRIMARY KEY,             -- Mã sinh viên
    FullName     VARCHAR(100) NOT NULL,
    Email        VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    DOB          DATE,
    Gender       VARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other'))
);

-- Bảng Giảng viên
CREATE TABLE Instructor (
    InstructorID VARCHAR(10) PRIMARY KEY,             -- Mã giảng viên
    FullName     VARCHAR(100) NOT NULL,
    Email        VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL
);

-- Bảng Môn học
CREATE TABLE Subject (
    SubjectID VARCHAR(10) PRIMARY KEY,                -- Mã môn học
    Title     VARCHAR(100) NOT NULL,
    Credit    INT NOT NULL
);

-- Bảng Thành phần điểm
CREATE TABLE Grade_Item (
    GradeID   INT PRIMARY KEY IDENTITY(1,1),
    Title     VARCHAR(100) NOT NULL,
    Rate      FLOAT NOT NULL,
    SubjectID VARCHAR(10) NOT NULL,
    CONSTRAINT FK_GradeItem_Subject FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID)
);

-- Bảng kỳ học
CREATE TABLE Semester (
    SemesterID VARCHAR(10) PRIMARY KEY,               -- Mã học kỳ
    Name       VARCHAR(50) NOT NULL,
    StartDate  DATE NOT NULL,
    EndDate    DATE NOT NULL
);

-- Bảng Lớp học phần
CREATE TABLE Course (
    CourseID     VARCHAR(20) PRIMARY KEY,             -- Mã lớp học phần
    Title        VARCHAR(100) NOT NULL,
    SubjectID    VARCHAR(10) NOT NULL,
    InstructorID VARCHAR(10) NOT NULL,
    SemesterID   VARCHAR(10) NOT NULL,
    StartDate    DATE,
    CONSTRAINT FK_Course_Subject FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID),
    CONSTRAINT FK_Course_Instructor FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID),
    CONSTRAINT FK_Course_Semester FOREIGN KEY (SemesterID) REFERENCES Semester(SemesterID)
);

-- Bảng Ghi danh sinh viên vào lớp học phần
CREATE TABLE Student_Course (
    StudentID VARCHAR(10) NOT NULL,
    CourseID  VARCHAR(20) NOT NULL,
    PRIMARY KEY (StudentID, CourseID),
    CONSTRAINT FK_StudentCourse_Student FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    CONSTRAINT FK_StudentCourse_Course FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Bảng Nhập điểm
CREATE TABLE Mark (
    StudentID VARCHAR(10) NOT NULL,
    CourseID  VARCHAR(20) NOT NULL,
    GradeID   INT NOT NULL,
    Value     FLOAT NOT NULL,
    Reason    NVARCHAR(255),
    PRIMARY KEY (StudentID, CourseID, GradeID),
    CONSTRAINT FK_Mark_Student FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    CONSTRAINT FK_Mark_Course FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    CONSTRAINT FK_Mark_GradeItem FOREIGN KEY (GradeID) REFERENCES Grade_Item(GradeID)
);

-- Bảng đăng ký môn học theo kỳ của sinh viên
CREATE TABLE Student_Semester_Subject (
    StudentID  VARCHAR(10) NOT NULL,
    SemesterID VARCHAR(10) NOT NULL,
    SubjectID  VARCHAR(10) NOT NULL,
    PRIMARY KEY (StudentID, SemesterID, SubjectID),
    CONSTRAINT FK_SSS_Student FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    CONSTRAINT FK_SSS_Semester FOREIGN KEY (SemesterID) REFERENCES Semester(SemesterID),
    CONSTRAINT FK_SSS_Subject FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID)
);
