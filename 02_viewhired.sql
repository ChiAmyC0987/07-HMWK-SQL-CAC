--List employees who were hired in 1986.
SELECT *
FROM employees
WHERE hire_date between '01/01/1986' and '12/30/1986';
