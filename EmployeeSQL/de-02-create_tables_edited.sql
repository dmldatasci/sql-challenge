-- drop tables if they already exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;

-- create tables corresponding with each csv file provided by Pewlett Hackard
CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(20) NOT NULL
);

CREATE TABLE departments (
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(20) NOT NULL
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(5) FOREIGN KEY,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR(1),
	hire_date DATE NOT NULL
	
	CONSTRAINT FK_emp_title FOREIGN KEY(emp_title_id)
		REFERENCES titles(title_id)
);

CREATE TABLE salaries (
	emp_no INT FOREIGN KEY,
	salary INT NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INT FOREIGN KEY,
	dept_no VARCHAR(5) FOREIGN KEY
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5) FOREIGN KEY,
	emp_no INT FOREIGN KEY
);