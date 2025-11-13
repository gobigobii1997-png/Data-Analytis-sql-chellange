Daily Challenge Day 1

Database Hospital
Create database Hospital;

 Write a SQL command to create a table named Patients with fields (PatientID, PatientName, Age, Gender, AdmissionDate).
 
 Create Table Patients(
 PatientID int Primary key,
 PatientName Varchar(50),
 Age int,
 Gender enum("M","F"),
 AdmissionDate Date);
 
 ALTER – Add Column

alter table Patients
add column DoctorAssigned varchar(100);

ALTER – Modify Column

Alter table Patients
modify PatientName Varchar(100);

RENAME Table

Alter table Patients
Rename to Patient_info;

TRUNCATE vs DROP

truncate table Patient_info;
drop table Patient_info;