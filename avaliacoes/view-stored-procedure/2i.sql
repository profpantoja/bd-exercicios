SELECT
    d.dept_name,
    sum(s.salary),
    YEAR(s.from_date) AS fiscal_year
FROM salaries s
    INNER JOIN dept_emp de ON (de.emp_no = s.emp_no)
    INNER JOIN departments d ON (d.dept_no = de.dept_no)
    INNER JOIN employees e ON (e.emp_no = de.emp_no)
GROUP BY
    from_date,
    d.dept_name
ORDER BY
    d.dept_no,
    fiscal_year;