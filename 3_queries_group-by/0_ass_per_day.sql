SELECT day, count(chapter) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day;

-- SELECT day, count(*) as total_assignments 
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;