CREATE TABLE Customers(
	CustomersID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    City VARCHAR(50)
);

INSERT INTO Customers(Name, Email, City) 
VALUES 
('Amit Kumar', 'amitkumar@gmail.com', 'Delhi, India'),
('Neha Verma','nehaverma@gmail.com', 'Bangalore, India'),
('Rahul Sharma', 'rahulsharma@gmail.com', 'Kolkata, India');

SELECT * FROM Customers;

-- Updating the table

UPDATE Customers
SET City = 'Pune'
WHERE NAME = 'Rahul Sharma';

SELECT * FROM Customers;

-- Deleting the table data

DELETE FROM Customers
WHERE Name = 'Neha Verma'; 
SELECT * FROM Customers;





