--List the following details of each employee: employee number, last name, first name, gender, and salary.
DROP TABLE emp_salary CASCADE;

--create emp_salary table
CREATE TABLE emp_salary (
    emp_no int,
    First_name varchar(25),
    last_name varchar(25),
    gender varchar(25),
    salary int 
);

INSERT INTO emp_salary(emp_no, last_name, first_name, gender)
SELECT emp_no, last_name, first_name, gender FROM employees;

UPDATE emp_salary
SET salary=salaries.salary
FROM salaries
WHERE emp_salary.emp_no = salaries.emp_no;

select *
from emp_salary;
