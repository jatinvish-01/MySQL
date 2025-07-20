CREATE TABLE Sales(
	SalesID INT AUTO_INCREMENT PRIMARY KEY,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Amount DECIMAL(10,2),
    SaleDate DATE
);

select *from Sales;

INSERT INTO Sales(Product, Category, Amount, SaleDate) VALUES 
('Pen', 'Stationery', 25.00, '2024-03-01'),
('Notebook', 'Stationery', 50.00, '2024-03-01'),
('Mouse', 'Electronics', 500.00, '2024-03-02'),
('Keyboard', 'Electronics', 700.00, '2024-03-03'),
('Charger', 'Electronics', 300.00, '2024-03-04'),
('Bag', 'Accessories', 1000.00, '2024-03-04');

select *from Sales;

-- Aggregation Function
SELECT COUNT(*) FROM Sales; -- gives all records

SELECT SUM(Amount) FROM Sales;  -- Gives sum of total sales

SELECT AVG(Amount) FROM Sales; -- Give average of our data

SELECT MIN(Amount), MAX(Amount) FROM Sales; -- Gives smallest, max sales 

SELECT Category, SUM(Amount) 
FROM Sales
GROUP BY Category -- Grouping data category wise
HAVING SUM(Amount) > 1000; -- Filtering the group after create 