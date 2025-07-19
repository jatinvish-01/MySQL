USE studentdb;

UPDATE student SET age = age + 1 WHERE age < 18;
SELECT * FROM student;