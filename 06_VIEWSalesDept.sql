--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp_no, last_name, first_name, dept_name
FROM employees_dept
WHERE dept_name = 'Sales'