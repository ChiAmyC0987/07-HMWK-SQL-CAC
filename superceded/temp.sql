-- Count last_names
SELECT COUNT(emp_no) 
FROM employees
GROUP BY (last_name)
ORDER BY (last_name) DESC;