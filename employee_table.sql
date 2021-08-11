/* SELECT *
FROM employees
JOIN salaries 
	ON employees.emp_no = salaries.emp_no
	-- WHERE to_date > NOW(); */
	
	
select datediff(curdate(), hire_date) as days_with_company, salary
from employees
join salaries using(emp_no)
where to_date > curdate();


