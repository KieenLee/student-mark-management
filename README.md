# Student Mark Management

A .NET project for managing student grades, designed for both instructors and students.

## Core Features

### Instructor
- Login to the system.
- View a list of assigned courses.
- View the list of students enrolled in each course.
- Input and modify grades for each student and grade item (e.g., Quiz, Midterm, Final).

### Student
- Login to the system.
- View personal information.
- View registered courses.
- Check detailed grades for each course and the final grade.
- View overall GPA.

## Technology Stack
- **Framework:** .NET
- **Database:** SQL Server
- **Architecture:** Layered (DataAccess, Repository, Service, Presentation)

## Database Setup

1.  **Create the Database:**
    Execute the script in `Student_Mark_ManagementDB.sql` to create the database schema.

2.  **Populate with Sample Data (Optional):**
    Run the `MockData.sql` script to populate the database with sample students, instructors, courses, and grades for testing purposes.
