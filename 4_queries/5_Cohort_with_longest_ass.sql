SELECT cohorts.name as name,avg(assistance_requests.completed_at-assistance_requests.started_at) 
as average_assistance_time
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
group by cohorts.name
order by average_assistance_time desc
Limit 1;