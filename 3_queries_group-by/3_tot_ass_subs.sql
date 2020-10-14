select cohorts.name as cohort_name, count(students.*) as total_submissions
from cohorts
-- JOIN assignment_submissions ON assignment_submissions.id = assignment_submission_id
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort_name
ORDER BY total_submissions DESC;







        ^
-- bootcampx=# \i 3_queries_group-by/3_tot_ass_subs.sql
--  cohort_name | total_submissions 
-- -------------+-------------------
--  JUN04       |              8030
--  JUL30       |              4664
--  SEP24       |              9328
--  MAR12       |              3002
--  APR09       |              7935
--  FEB12       |              5440
--  JUL02       |              5868
--  AUG27       |              4589
--  NOV19       |              7231
--  MAY07       |              5843
--  OCT22       |              4626
-- (11 rows)

-- psql:3_queries_group-by/3_tot_ass_subs.sql:7: 
-- ERROR:  syntax error at or near "ORDER"
-- LINE 1: ORDER BY assignment_submissions;
--         ^
