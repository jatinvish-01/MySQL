CREATE TABLE College_students(
	Name VARCHAR(50));

INSERT INTO College_students(Name) VALUES 
('Aman'),
('Rahul'),
('Priya');
    
CREATE TABLE Online_students(
	Name VARCHAR(50));
    
INSERT INTO Online_students(Name) VALUES 
('Rahul'),
('Simran'),
('Aman');

SELECT * FROM College_students
UNION ALL
SELECT * FROM Online_students;