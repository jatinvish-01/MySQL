CREATE TABLE Employees(
	emp_ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR (15),
    salary DECIMAL  (10,2)
);

-- Inserting values in table
INSERT INTO Employees(name, department, salary) VALUES
('Aman', 'IT', 50000.00),
('Neha', 'HR', 45000.00),
('Rahul', 'IT',65000.00),
('Priya', 'Finance', 40000.00),
('Simran', 'HR', 55000.00),
('Ramesh', 'IT', 70000.00);

SELECT * FROM Employees;

--  1. Get the employee(s) with the highest salary

SELECT name, salary 
FROM Employees
WHERE salary = (
	SELECT MAX(salary) FROM Employees
);

-- 2. Get employees who earn more than the average salary.

SELECT name, salary
FROM Employees
WHERE salary > (
	SELECT AVG(salary) FROM Employees
);

-- 3. Find all employees from the department with lowest salary.

SELECT name
FROM Employees
WHERE salary = (
	SELECT MIN(salary) FROM Employees
);

-- 4. List all employees who earn more than 'Neha'.

SELECT name, salary
FROM Employees
WHERE salary > (
	SELECT salary FROM Employees WHERE name = 'Neha'
);

-- 5. Find employees not from the department with highest salary.

SELECT name, department
FROM Employees
WHERE department NOT IN (
	SELECT department FROM Employees
	WHERE salary = (SELECT MAX(salary) FROM Employees)
);

-- 6. Find the second highest salary using subquery.

SELECT MAX(salary) FROM Employees
WHERE salary < (
	SELECT MAX(salary) FROM Employees
);

-- 7. Get names of employees whose salary is equal to any employee in HR.

SELECT name FROM Employees
WHERE salary IN (
	SELECT salary FROM Employees WHERE department = 'HR'
);

-- 8. List employees who earn more than all employees in HR.

SELECT name, salary FROM Employees
WHERE salary > ALL (
	SELECT salary FROM Employees WHERE department = 'HR'
);

-- 9. Find employees who do not have the highest salary in their department.

SELECT name, department FROM Employees AS e
WHERE salary <  (
	SELECT MAX(salary) FROM Employees WHERE department = e.department
);


-- 10. For each department, find employee(s) with maximum salary in that department. (Correlated subquery)

SELECT name, department, salary FROM Employees e
WHERE salary = (
	SELECT MAX(salary) FROM Employees WHERE department = e.department
);