/* List the following details of each employee: employee number, last name, first name, 
gender, and salary.*/

SELECT 	employees.emp_no, employees.last_name, 
		employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries on employees.emp_no = salaries.emp_no;

--List employees who were hired in 1986.

SELECT * FROM employees
WHERE employees.hire_date LIKE '1986%'
;

/* List the manager of each department with the following information: department number, 
department name, the manager's employee number, last name, first name, and start and 
end employment dates.*/

SELECT 	dept_manager.dept_no, 
		departments.dept_name, 
		employees.emp_no,
		employees.last_name,
		employees.first_name,
		dept_manager.from_date,
		dept_manager.to_date		
FROM 
    ((dept_manager
INNER JOIN
    departments ON dept_manager.dept_no = departments.dept_no)
INNER JOIN
     employees ON employees.emp_no = dept_manager.emp_no);

		
/*List the department of each employee with the following information: employee number, 
last name, first name, and department name.*/

SELECT 	employees.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
		
FROM	((dept_emp
INNER JOIN	
departments ON dept_emp.dept_no = departments.dept_no)
INNER JOIN
     	employees ON employees.emp_no = dept_emp.emp_no);


--List all employees whose first name is "Hercules" and last names begin with "B."

SELECT * FROM employees 
WHERE employees.first_name = 'Hercules' 
AND 
employees.last_name LIKE 'B%'
;

/*List all employees in the Sales department, including their employee number, last name, 
first name, and department name.*/

SELECT  departments.dept_name,
		employees.emp_no, 
		employees.last_name, 
		employees.first_name
FROM	((dept_emp
INNER JOIN	
departments ON dept_emp.dept_no = departments.dept_no)
INNER JOIN
     	employees ON employees.emp_no = dept_emp.emp_no)
WHERE departments.dept_name = 'Sales'
;


/*List all employees in the Sales and Development departments, 
including their employee number, last name, first name, and department name.*/
SELECT  departments.dept_name,
		employees.emp_no, 
		employees.last_name, 
		employees.first_name
FROM	((dept_emp
INNER JOIN	
departments ON dept_emp.dept_no = departments.dept_no)
INNER JOIN
     	employees ON employees.emp_no = dept_emp.emp_no)
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'


/*In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name.*/

SELECT 	last_name, count(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name)DESC
;
