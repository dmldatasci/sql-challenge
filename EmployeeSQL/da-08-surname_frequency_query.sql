-- frequency counts (desc) of last names
SELECT last_name,
	COUNT(last_name) AS surname_count
FROM employees
GROUP BY last_name
ORDER BY surname_count DESC;