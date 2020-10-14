SELECT students.name as student, 
avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration desc;


-- bootcampx=# \i 3_queries_group-by/4_avg_com_time.sql 
-- psql:3_queries_group-by/4_avg_com_time.sql:4: 
-- ERROR:  column "students.name" must appear in the 
-- GROUP BY clause or be used in an aggregate function
-- LINE 1: SELECT students.name as student, avg(assignment_submissions....
--                ^
-- bootcampx=# 


-- psql:3_queries_group-by/4_avg_com_time.sql:5:
--  ERROR:  column "average_assignment_duration" does not exist
-- LINE 1: ...s student, avg(assignment_submissions.duration) = average_as...
--                                                              ^
-- psql:3_queries_group-by/4_avg_com_time.sql:6:
--  ERROR:  syntax error at or near "ORDER"
-- LINE 1: ORDER BY average_assignment_duration desc;
--         ^



-- psql:3_queries_group-by/4_avg_com_time.sql:6: 
-- ERROR:  syntax error at or near "ORDER"
-- LINE 1: ORDER BY average_assignment_duration desc;
--         ^
