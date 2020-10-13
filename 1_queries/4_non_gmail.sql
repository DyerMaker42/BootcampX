-- SELECT name, id, email, cohort_id
-- FROM students
-- WHERE NOT  email LIKE '%gmail.com';


SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;