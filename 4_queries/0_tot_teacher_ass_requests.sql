SELECT count(*) as total_assistances, teachers.name as name
FROM assistance_requests
join teachers ON teachers.id = assistance_requests.teacher_id
where name = 'Waylon Boehm'
group by name;