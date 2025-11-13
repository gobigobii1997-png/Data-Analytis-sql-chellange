Create Database Univercity;
Use University;

create Table Students(
Student_id Int Primary Key,
Student_name Varchar(100),
Course_id Int);

Create Table Course(
Course_id Int Primary Key,
Course_Name Varchar(100));


Insert into Students values
(1, 'John Smith', 101),
(2, 'Mary Johnson',102),
(3, 'Alex Brown',101),
(4, 'Sophia Davis',105),
(5, 'Malathy Padmanabhn', 103),
(6, ' Ricky Jose', 104);

Insert into Course values
(101, 'Computer Science'),
(102, ' Commerce'),
(103, ' Mathematics'),
(104, ' Bio-Tech'),
(105, ' AI');

--  INNER JOIN

-- Write a query joining Students and Courses.

Select s.student_id, c.Course_id from Students s
Inner join Course c on s.Course_id - c.Course_id;

-- LEFT & RIGHT JOIN
-- Use LEFT JOIN and RIGHT JOIN between Students and Enrollments.

Select s.student_id, c.Course_Name from Students s
Left join Course c on s.Course_id = c.Course_id;

Select s.student_id, c.Course_Name from Students s
Right join Course c on s.Course_id = c.Course_id;

Create Table Current_employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
department VARCHAR(50)
);

INSERT INTO Current_employees VALUES
(1, 'John Smith', 'Finance'),
(2, 'Mary Johnson', 'HR'),
(3, 'Alex Brown', 'IT'),
(4, 'Sophia Davis', 'Marketing');

Create Table Past_employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
department VARCHAR(50)
);
INSERT INTO Past_employees VALUES
(3, 'Alex Brown', 'IT'),
(5, 'James Wilson', 'Finance'),
(4, 'Alex Brown', 'IT'),
(6, 'Emma Taylor', 'HR');

-- UNION VS UNION ALL --

Select Emp_name from Current_employees Union select Emp_name from Past_employees;
Select Emp_name from Current_employees Union all Select Emp_name from Past_employees;


