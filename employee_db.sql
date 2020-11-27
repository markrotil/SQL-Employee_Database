-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT "Employees".emp_no, 
	   "Employees".last_name, 
	   "Employees".first_name,
	   "Salaries".salary
FROM "Employees"
JOIN "Salaries" ON
"Employees".emp_no = "Salaries".emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT "Employees".first_name, 
	   "Employees".last_name, 
	   "Employees".hire_date
FROM "Employees"
WHERE hire_date LIKE '%1986%';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

SELECT "Departments".dept_no,
	   "Departments".dept_name,
	   "Dept_Manager".emp_no,
	   "Employees".last_name, 
	   "Employees".first_name
FROM "Departments"
    INNER JOIN "Dept_Manager"
          ON "Departments".dept_no = "Dept_Manager".dept_no
    	INNER JOIN "Employees"
          	ON "Dept_Manager".emp_no = "Employees".emp_no 
		  		AND "Dept_Manager".dept_no = "Departments".dept_no
					WHERE emp_title_id = 'm0001'

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT "Dept_EMP".emp_no,
	   "Employees".last_name, 
	   "Employees".first_name,
	   "Departments".dept_name
FROM "Departments"
    INNER JOIN "Dept_EMP"
          ON "Departments".dept_no = "Dept_EMP".dept_no
    	INNER JOIN "Employees"
          	ON "Dept_EMP".emp_no = "Employees".emp_no 
		  		AND "Dept_EMP".dept_no = "Departments".dept_no
	
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select "Employees".first_name,
	   "Employees".last_name,
	   "Employees".sex
From "Employees" 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT "Dept_EMP".emp_no,
	   "Employees".last_name, 
	   "Employees".first_name,
	   "Departments".dept_name
FROM "Departments"
    INNER JOIN "Dept_EMP"
          ON "Departments".dept_no = "Dept_EMP".dept_no
    	INNER JOIN "Employees"
          	ON "Dept_EMP".emp_no = "Employees".emp_no 
		  		AND "Dept_EMP".dept_no = "Departments".dept_no
					WHERE dept_name = 'Sales'
					
-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT "Dept_EMP".emp_no,
	   "Employees".last_name, 
	   "Employees".first_name,
	   "Departments".dept_name
FROM "Departments"
    INNER JOIN "Dept_EMP"
          ON "Departments".dept_no = "Dept_EMP".dept_no
    	INNER JOIN "Employees"
          	ON "Dept_EMP".emp_no = "Employees".emp_no 
		  		AND "Dept_EMP".dept_no = "Departments".dept_no
					WHERE dept_name = 'Sales' 
						OR dept_name = 'Development'
						
-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

SELECT "Employees".last_name, count("Employees".last_name) FROM "Employees"
GROUP BY last_name
ORDER BY last_name DESC
					
					