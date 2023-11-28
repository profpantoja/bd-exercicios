CREATE VIEW
    departament_costs AS
SELECT
    d.dept_no,
    d.dept_name,
    sum(s.salary) AS costs,
    YEAR(de.from_date) AS fiscal_year
FROM departments d
    INNER JOIN dept_emp de ON (de.dept_no = d.dept_no)
    INNER JOIN salaries s ON (s.emp_no = de.emp_no)
GROUP BY
    d.dept_name,
    fiscal_year
ORDER BY fiscal_year