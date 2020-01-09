/* Create a table schema for each of the six CSV files. Specifies data types, 
primary keys, foreign keys, and other constraints. Import each CSV file into the 
corresponding SQL table.*/

CREATE TABLE departments(
	dept_no VARCHAR (255) NOT NULL,
	dept_name VARCHAR (255) NOT NULL,
	PRIMARY KEY (dept_no)
);


SELECT * FROM departments;
CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(255) NOT NULL,
	from_date VARCHAR(255) NOT NULL,
	to_date VARCHAR(255) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


SELECT * FROM departments;
CREATE TABLE dept_manager(
	dept_no VARCHAR(255) NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date VARCHAR(255) NOT NULL,
	to_date VARCHAR(255) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


CREATE TABLE employees(
    emp_no INTEGER NOT NULL,
    birth_date VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    hire_date VARCHAR(50) NOT NULL,
    PRIMARY KEY (emp_no)
);


SELECT * FROM employees;
CREATE TABLE salaries(
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	from_date VARCHAR(255) NOT NULL,
	to_date VARCHAR(255) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);


SELECT * FROM employees;
CREATE TABLE titles(
	emp_no INTEGER NOT NULL,
	title VARCHAR(255) NOT NULL,
	from_date VARCHAR(255) NOT NULL,
	to_date VARCHAR(255) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);