--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
DROP TABLE name_count;

CREATE TABLE name_count(
last_name varchar(25),
name_count int
);

INSERT INTO name_count(last_name, name_count)
SELECT
last_name,
COUNT(last_name) AS "name_count"
from employees
GROUP BY
last_name
ORDER BY name_count DESC;

SELECT *
FROM name_count;

