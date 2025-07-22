CREATE TABLE office_people(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(15),
    salary INT
);

INSERT INTO office_people(name, department, salary) VALUES
('Alice', 'HR', 50000),
('Bob', 'IT', 70000),
('Charlie', 'IT', 65000);

-- Creating view
CREATE VIEW IT_Employees AS
SELECT name, salary
FROM office_people
WHERE department = 'IT';

SELECT * FROM IT_Employees;	
