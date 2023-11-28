SELECT
    e.first_name,
    SUM(s.salary) AS 'total_salary',
    YEAR(s.from_date) AS 'fiscal_year'
FROM employees e
    INNER JOIN salaries s ON (s.emp_no = e.emp_no)
GROUP BY from_date;