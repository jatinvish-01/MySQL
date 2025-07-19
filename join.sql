SELECT students.name, marks.subject, marks.score from students inner join marks on students.id = marks.student_id;

SELECT students.name, marks.subject, marks.score from students left join marks on students.id = marks.student_id;

SELECT students.name, marks.subject, marks.score from students right join marks on students.id = marks.student_id;

SELECT students.name, marks.subject, marks.score from students cross join marks;

