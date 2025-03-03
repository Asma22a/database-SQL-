CREATE DATABASE task 
use task 
go


--Create a table named "Employees" with columns for ID (integer), Name (varchar), and Salary (decimal).
CREATE TABLE Employees (
ID INT ,
Name VARCHAR(100),
Salary DECIMAL(7,2),
)
--Add a new column named "Department" to the "Employees" table with data type varchar(50).
ALTER TABLE Employees 
ADD Department VARCHAR(50)
GO
--Remove the "Salary" column from the "Employees" table.
ALTER TABLE Employees
DROP COLUMN Salary
GO
--Rename the "Department" column in the "Employees" table to "DeptName".
EXEC sp_rename 'Employees.Department',  'DeptName', 'COLUMN'
GO
--Create a new table called "Projects" with columns for ProjectID (integer) and ProjectName (varchar).
CREATE TABLE Projects (
ProjectID INT,
ProjectName VARCHAR(100),
)
--Add a primary key constraint to the "Employees" table for the "ID" column.
ALTER TABLE Employees
ALTER COLUMN ID INT NOT NULL
ALTER TABLE Employees
ADD PRIMARY KEY (ID)
--Create a foreign key relationship between the "Employees" table (referencing "ID") and the "Projects" table (referencing "ProjectID").

--Remove the foreign key relationship between "Employees" and "Projects."
--Add a unique constraint to the "Name" column in the "Employees" table.
ALTER TABLE Employees
ADD UNIQUE (Name)
--Create a table named "Customers" with columns for CustomerID (integer), FirstName (varchar), LastName (varchar), and Email (varchar), and Status (varchar).
CREATE TABLE Customers (
CustomerID INT ,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
Status VARCHAR(100),
)
--Add a unique constraint to the combination of "FirstName" and "LastName" columns in the "Customers" table
ALTER TABLE Customers
ADD CONSTRAINT UN_Customers UNIQUE (FirstName,LastName);
--Add a default value of 'Active' for the "Status" column in the "Customers" table, where the default value should be applied when a new record is inserted.
ALTER TABLE Customers
ADD CONSTRAINT df_Status
DEFAULT 'Active' FOR Status
--Create a table named "Orders" with columns for OrderID (integer), CustomerID (integer), OrderDate (datetime), and TotalAmount (decimal).
CREATE TABLE OrderS (
OrderID INT,
CustomerID INT,
OrderDate DATETIME,
TotalAmount DECIMAL,
)
--Add a check constraint to the "TotalAmount" column in the "Orders" table to ensure that it is greater than zero.
ALTER TABLE OrderS
ADD CHECK (TotalAmount>0)
--Create a schema named "Sales" and move the "Orders" table into this schema.
GO 
CREATE SCHEMA Sales
ALTER SCHEMA Sales
TRANSFER dbo.OrderS
--Rename the "Orders" table to "SalesOrders."
EXEC sp_rename 'Sales.OrderS','SalesOrders'