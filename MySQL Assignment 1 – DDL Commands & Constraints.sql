create database Employee;
Use Employee;
Create Table Departments (
deparment_id INT,
department_name VARCHAR(100)
);

Create Table Location (
Location_id Int,
Location Varchar(100)
);

Create Table Employees (
Employee_id int,
employee_name varchar(100),
gender enum("M","F"),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
Salary decimal(10,2)
);

alter table employees
add column email_id varchar(100) not null;

Alter table employees
modify designation Text;

Alter table employees
drop column age;

Alter table employees
Rename column hire_date to date_of_joining;

Alter table departments
Rename to Departments_info;

Alter table location
Rename to Locations;

truncate table employees;

drop Table Employees;
drop database employee;

create database Employee;
Use Employee;
Create Table Departments (
deparment_id INT primary Key,
department_name VARCHAR(100) not null unique
);

Create Table Location (
Location_id Int Auto_increment Primary Key,
Location Varchar(100) not null Unique
);

Create Table Employees (
Employee_id int auto_increment primary key,
employee_name varchar(100) not null,
gender enum("M","F") not null,
age int not null check(age>=18),
hire_date date Default(current_date),
designation varchar(100),
department_id int,
location_id int,
Salary decimal(10,2),
foreign key (department_id) references Departments(department_id),
foreign key(location_id) references Location(Location_id)
);

Alter table departments
Rename column deparment_id to Department_id;

drop Table Employees;

Create Table Employees (
Employee_id int auto_increment primary key,
employee_name varchar(100) not null,
gender enum("M","F") not null,
age int not null check(age>=18),
hire_date date Default(current_date),
designation varchar(100),
department_id int,
location_id int,
Salary decimal(10,2),
foreign key (department_id) references Departments(department_id),
foreign key(location_id) references Location(Location_id)
);




