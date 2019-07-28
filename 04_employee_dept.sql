--List the department of each employee with the following information: employee number, last name, first name, and department name.
DROP TABLE employees_dept;

CREATE TABLE employees_dept(
    emp_no int,
    last_name varchar(25),
    first_name varchar(25),
	dept_no varchar(5),
	dept_name varchar(25)
);

INSERT INTO employees_dept(emp_no, last_name, first_name)
SELECT emp_no, last_name, first_name
FROM employees;

UPDATE  employees_dept
SET dept_no=dept_emp.dept_no
FROM dept_emp
WHERE employees_dept.emp_no = dept_emp.emp_no;

UPDATE  employees_dept
SET dept_name=departments.dept_name
FROM departments
WHERE employees_dept.dept_no = departments.dept_no;

select *
from employees_dept;
