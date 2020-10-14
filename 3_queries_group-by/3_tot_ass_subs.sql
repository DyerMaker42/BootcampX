select cohorts.name as cohort_name, count(students.*) as total_submissions
from cohorts
-- JOIN assignment_submissions ON assignment_submissions.id = assignment_submission_id
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort_name
ORDER BY total_submissions DESC;