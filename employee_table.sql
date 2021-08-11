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


SELECT emp_no, count(title) AS title_count, datediff(curdate(), hire_date) AS days_on_job
FROM employees
JOIN titles USING(emp_no)
GROUP BY emp_no;

SELECT * 
FROM employees;

SELECT * 
FROM departments;

SELECT * 
FROM dept_manager;

SELECT emp_no, gender,
	IF(dept_no LIKE 'd%', True, False) AS is_manager
FROM employees
LEFT JOIN dept_manager USING(emp_no);

-- Is an employee's gender independent of whether an employee works in sales or marketing? 
-- (only look at current employees)

SELECT * 
FROM departments;
SELECT * 
FROM dept_emp;
SELECT * 
FROM employees;

SELECT emp_no, gender, dept_name
FROM dept_emp 
LEFT JOIN departments USING(dept_no)
JOIN employees USING(emp_no)
WHERE to_date > NOW() AND (dept_no = 'd001' OR dept_no = 'd007');


