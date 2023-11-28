DELETE employees, salaries
FROM employees e
    INNER JOIN salaries s ON (e.emp_no = s.emp_no)
WHERE
    e.first_name LIKE 'A%'
    OR e.first_name LIKE 'B%'
    OR e.first_name LIKE 'P%';