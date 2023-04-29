-- drop tables if they already exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;

-- create tables corresponding with each csv file provided by Pewlett Hackard
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY(title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(5) NOT NULL,
	dept_name VARCHAR(20) NOT NULL
	PRIMARY KEY(dept_no)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR(1),
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);