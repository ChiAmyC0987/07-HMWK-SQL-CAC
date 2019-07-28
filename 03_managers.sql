--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
DROP TABLE managers;

CREATE TABLE managers(
    dept_no varchar(5),
	dept_name varchar(25),
	emp_no int,
    first_name varchar(25),
    last_name varchar(25),
    from_date date,
	to_date date
);

INSERT INTO managers(dept_no, emp_no, from_date, to_date)
SELECT dept_no, emp_no, from_date, to_date
FROM dept_manager;

UPDATE  managers
SET dept_name=departments.dept_name
FROM departments
WHERE managers.dept_no=departments.dept_no;

UPDATE managers
SET last_name=employees.last_name, first_name=employees.first_name
FROM employees
WHERE managers.emp_no=employees.emp_no;

SELECT *
FROM managers;
