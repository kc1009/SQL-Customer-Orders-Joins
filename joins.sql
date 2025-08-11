-- create database-- 
CREATE  DATABASE CustomerOrdersDB;
USE CustomerOrdersDB; 

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    City VARCHAR(50)
);

-- Create the Orders table (related to Customers)
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert sample data into Customers
INSERT INTO Customers (CustomerName, Email, Phone, City)
VALUES
('Amit Sharma', 'amit.sharma@example.com', '9876543210', 'Delhi'),
('Priya Singh', 'priya.singh@example.com', '9123456780', 'Mumbai'),
('Raj Verma', 'raj.verma@example.com', '9988776655', 'Bangalore');

-- Insert sample data into Orders
INSERT INTO Orders (OrderDate, Amount, CustomerID)
VALUES
('2025-08-01', 2500.50, 1),
('2025-08-02', 1500.00, 1),
('2025-08-03', 3200.75, 2),
('2025-08-04', 800.00, 3),
('2025-08-05', 4200.90, 2);

-- INNER JOIN — Customers with orders only
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN — All customers (orders if any)-- 
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN — All orders (customer info if any)--
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL JOIN — All customers and all orders --
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
 

  

