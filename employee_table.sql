/* SELECT *
FROM employees
JOIN salaries 
	ON employees.emp_no = salaries.emp_no
	-- WHERE to_date > NOW(); */
	
	
/* select datediff(curdate(), hire_date) as days_with_company, salary
from employees
join salaries using(emp_no)
where to_date > curdate(); */

SELECT *
FROM titles;

SELECT emp_no, hire_date, title
FROM employees
JOIN titles USING(emp_no);

SELECT emp_no, 
	datediff(curdate(), hire_date) AS days_with_company,
	hire_date, title
FROM employees
JOIN titles USING(emp_no);

