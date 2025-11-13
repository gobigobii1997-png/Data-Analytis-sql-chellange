
-- Create Books table with PRIMARY KEY
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Publication_Name Varchar(100),
    Price DECIMAL(10,2)
);
-- Create Orders table with FOREIGN KEY referencing Books(BookID)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    BookID INT,
    Quantity INT,
    Price Decimal(10,2),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
Select * from Orders;

-- Add ISBN column with UNIQUE constraint

Alter table Books add ISBN Varchar(20) Unique;

Select * from Books;
-- DELETE specific rows
Delete from orders Where BookID < 100;
-- TRUNCATE removes all rows quickly
Truncate Table Orders;


