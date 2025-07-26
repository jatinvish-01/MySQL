SELECT *, AVG(marks) OVER() 
FROM CollegeDB.marks;


SELECT *, AVG(marks) OVER(PARTITION BY branch) FROM CollegeDB.marks;

-- Aggregate function with OVER()

SELECT *,
AVG(marks) OVER() AS 'OverAll_avg',
MIN(marks) OVER() AS 'MIN',
MAX(marks) OVER() AS 'MAX',
MIN(marks) OVER(PARTITION BY branch) AS 'MIN by branch',
MAX(marks) OVER(PARTITION BY branch) AS 'MAX by branch'
FROM CollegeDB.marks
ORDER BY student_id

-- Find all the students who have marks higher than the avg marks of their respective branch

SELECT * FROM (
   SELECT *, 
          AVG(marks) OVER(PARTITION BY branch) AS branch_avg
   FROM marks
) t
WHERE t.marks > t.branch_avg
ORDER BY student_id;

-- RANK

SELECT *,
RANK() OVER(ORDER BY marks DESC) AS 'Rank',
-- DENSE_RANK
DENSE_RANK() OVER(ORDER BY marks DESC) AS 'Dense rank'
FROM marks

-- ROW_NUMBER

SELECT *,
ROW_NUMBER() OVER(PARTITION BY branch)
FROM marks

-- Asign student roll number based on branch

SELECT *,
CONCAT(branch, '-', ROW_NUMBER() OVER(PARTITION BY branch))
FROM marks

-- FIRST_VALUE / LAST_VALUE / NTH_VALUE
--  Select those student how have max marks 
USE collegeDB;
SELECT * FROM marks;

SELECT *,
FIRST_VALUE (marks) OVER(ORDER BY marks DESC)
FROM marks;

SELECT *,
LAST_VALUE (marks) OVER(ORDER BY marks DESC)
FROM marks; -- give wrong answer

-- Finding lowest marks partition by branch
SELECT *,
LAST_VALUE (marks) OVER(PARTITION BY  branch ORDER BY marks DESC
	ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM marks;

-- Finding NTH_VALUE
SELECT *,
NTH_VALUE (name, 2) OVER(PARTITION BY  branch ORDER BY marks DESC
	ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM marks;