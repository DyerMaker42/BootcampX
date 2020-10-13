-- SELECT COUNT(assignments_submissions.duration) as total_duration
-- FROM students
-- LEFT OUTER JOIN assignments_submissions 
-- ON student_id = students.id
-- WHERE assignments_submissions.duration IS NULL and 
-- student.name LIKE('Ibrahim Schimmel');

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';