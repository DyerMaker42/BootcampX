SELECT count(*) as total_assistances, students.name as name
FROM assistance_requests
join students ON students.id = assistance_requests.student_id
where name = 'Elliot Dickinson'
group by name;