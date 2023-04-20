-- Q1
-- employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no,
    e.first_name,
	e.last_name,
	e.sex,
	s.salary
FROM employees AS e
	INNER JOIN salaries AS s ON e.emp_no = s.emp_no;

-- Q2
-- first name, last name, and hire date for employees hired in 1986
SELECT first_name,
    last_name,
    hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- Q3
-- manager of each department with department number, department name, 
-- employee number, last name, and first name
SELECT dm.dept_no,
	d.dept_name,
	dm.emp_no, 
	e.last_name, 
	e.first_name
FROM dept_manager AS dm
	INNER JOIN employees AS e ON dm.emp_no = e.emp_no
	INNER JOIN departments AS d ON dm.dept_no = d.dept_no;

-- Q4
-- department number with employee number, last name, first name, and department name
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
	INNER JOIN dept_emp AS de 
		ON e.emp_no = de.emp_no
	INNER JOIN departments AS d 
		ON de.dept_no = d.dept_no;

-- Q5
-- first name, last name, and sex of employees with first name Hercules
-- and last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';

-- Q6
-- sales department employees with employee number, last name, and first name
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON e.emp_no = de.emp_no
	INNER JOIN departments AS d
		ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- Q7
-- sales department employees with employee number, last name, and first name
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON e.emp_no = de.emp_no
	INNER JOIN departments AS d
		ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' 
	OR d.dept_name = 'Development';

-- Q8
-- frequency counts (desc) of last names
SELECT last_name,
	COUNT(last_name) AS surname_count
FROM employees
GROUP BY last_name
ORDER BY surname_count DESC;