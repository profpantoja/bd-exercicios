CREATE VIEW
    yearly_costs_by_department AS
SELECT
    s.emp_no,
    CONCAT(
        employees.first_name,
        " ",
        employees.last_name
    ) AS full_name d.dept_no d.dept_name,
    YEAR(s.from_date) AS fiscal_year,
    s.salary,
    dc.totalAnual,
    CONCAT(
        s.salary * 10000 / dc.totalAnual,
        '%'
    ) AS porcentage
FROM salaries
    INNER JOIN employees e ON (s.emp_no = e.emp_no)
    INNER JOIN dept_emp de ON (e.emp_no = de.emp_no)
    INNER JOIN departments d ON (de.dept_no = d.dept_no)
    INNER JOIN department_costs dc ON (d.dept_name = dc.dept_name)
WHERE
    dc.ano = YEAR(s.from_date)
ORDER BY porcentage DESC;