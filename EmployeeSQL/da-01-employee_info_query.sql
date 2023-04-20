-- employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.sex,
	s.salary
FROM employees AS e
	INNER JOIN salaries AS s ON e.emp_no = s.emp_no;