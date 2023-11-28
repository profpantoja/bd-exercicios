SELECT 
	name_employee, 
    cod_departs, 
    name_departs, 
    (sum_salary_employee*100), 
    year_date 
FROM annual_employee
WHERE
	(sum_salary_employee*100) > 10
ORDER BY name_employee;