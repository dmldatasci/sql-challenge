# sql-challenge
Module 6 submission for UC Berkeley data science bootcamp.

This project structures and analyzes data pertaining to employee records of a theoretical company from the 1980s and 1990s. The salient information has been retained only in a series of six `.csv` files to which we have been granted access.

For this project, we have instnatiated a relational database, designed a schema to hold the employee data, populated the data tables, and then answered a series of salient questions that the C-suite has about employment during this window. The components of this project are laid out in more detail below.

---

## Data Modeling

### Procedure
1. Inspect the `.csv` files and sketch an entity relationship diagram (ERD) of the tables.

    ![ERD](EmployeeSQL/EmployeeSQL_ERD.png)

2. 
---

## Data Engineering

### Procedure
1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

    * Specify the data types, primary keys, foreign keys, and other constraints.

    * For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.
    
    * Be sure to create the tables in the correct order to handle the foreign keys.

2. Import each CSV file into its corresponding SQL table.

---

## Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).