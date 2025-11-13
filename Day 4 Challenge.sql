create database Sql_Data_4_challenge;
Use Sql_Data_4_challenge;

Create Table Product(
Product_id Int Primary Key,
Product_Name Varchar(100),
Amount decimal(10,2));

Insert into Product values
(101, 'iPhone 15 Pro', 1399.00),
(102, 'Samsung Galaxy S24', 1099.00),
(103, 'OnePlus 12', 899.00),
(104, 'MacBook Air M3', 1299.00),
(105, 'iPad Pro', 999.00),
(106, 'Apple Watch Ultra', 799.00);

-- ORDER BY & LIMIT
-- In an e-commerce system, show the top 3 highest-priced products.
-- Write a SQL query using ORDER BY and LIMIT.
select  Product_id, Product_Name, Amount from product
order by Amount desc
Limit 4;

Create Table Sale(
Sale_Date date,
Sale_id Int Primary Key,
Product_id Int,
Amount decimal(10,2));

insert into Sale values
('2025-10-01',1, 101, 1399.00),
('2025-10-02', 2, 102, 1099.00),
('2025-10-02', 3, 103, 899.00),
('2025-10-03', 4, 104, 1299.00),
('2025-10-04', 5, 105, 999.00);

-- Aggregate Functions
-- Management wants statistics of sales data.
-- Write queries using COUNT, SUM, AVG, MAX, MIN on Sales table.

Select Count(*) AS Total_Sales from Sale;

Select sum(Amount) As Total_Revenue from Sale;

Select Avg(Amount) As Avg_SaleAmt from Sale;

Select MAX(Amount) As Max_saleAmt from Sale;

Select Min(Amount) As Min_SaleAmt From Sale;

Create Table employee_details(
Employee_id Int Primary Key,
Employee_Name Varchar(100),
Department_id Int);

Insert Into Employee_details values
(1, 'John Smith', 101),
(2, 'Mary Johnson', 101),
(3, 'Alex Brown', 101),
(4, 'Emma Davis', 102),
(5, 'Liam Wilson', 102),
(6, 'Noah Taylor', 101),
(7, 'Sophia White', 103),
(8, 'Olivia Harris', 101),
(9, 'James Martin', 101),
(10, 'Mia Thompson', 101),
(11, 'Ethan Lee', 101),
(12, 'Ava Clark', 104);

-- GROUP BY & HAVING
--  Find departments with more than 10 employees.
--  Write a query using GROUP BY and HAVING.

Select Department_id, Count(Employee_id) AS Total_employees from Employee_details
group by Department_id having count(Employee_id)>10;



