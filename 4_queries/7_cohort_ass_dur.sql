Select cohorts.name as cohort, sum(completed_at-started_at) as total_duration
from assistance_requests
join students on assistance_requests.student_id = students.id
join cohorts on students.cohort_id = cohorts.id
group by cohort
order by total_duration;