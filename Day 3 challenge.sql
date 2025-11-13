Create Database University;
Use University;

Create Table Student_Database(
Student_ID Int Primary Key,
Student_Name Varchar(100),
Department Varchar(100),
Email_Id Varchar(100),
Course Varchar(100),
Location Varchar(100),
GPA Decimal(3,2)
);

Select * From Student_Database;

Insert into Student_Database  Values
(101, "Alice", "Computer Science", "alice@univ.edu", "Database Systems", "Science Block", 3.8),
(102, "Bob", "Mathematics", null, "Linear Algebra", "Main Building",  2.9),
(103, "Charlie", "Physics", "charlie@univ.edu", "Quantum Mechanics", "Science Block", 3.4),
(104, "David", "Computer Science", null, "Operating Systems", "Annex Building", 1.8),
(105, "Eve", "Mathematics", "eve@univ.edu", "Statistics", "Main Building", 3.2),
(106, "Frank", "Biology", "frank@univ.edu", "Genetics", "Science Block", 2.4),
(107, "Grace", "Chemistry", "grace@univ.ed", "OrganicChemistry", "Science Block", 3.9),
(108, "Henry", "Physics", null, "Thermodynamics", "Annex Building", 3.0);

-- Distinct & Where
Select distinct Department from Student_Database Where Location = "Main building";

-- IS NULL & NOT NULL

select Student_ID from Student_Database where Email_ID is not null;
select Student_ID From Student_Database where Email_Id is null;

-- IN, BETWEEN, NOT BETWEEN

select Student_ID, Student_Name, Course, GPA from Student_Database where GPA between 1.0 and 3.0;
select Student_ID, Student_Name, Course, GPA from Student_Database where GPA not between 1.0 and 3.0;


