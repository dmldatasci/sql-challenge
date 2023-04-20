-- drop tables if they already exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;

-- create tables corresponding with each csv file provided by Pewlett Hackard
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR (30),
	sex VARCHAR(1),
	hire_date DATE
);

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(20)
);

CREATE TABLE departments (
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(20)
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(5)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5),
	emp_no INT
);