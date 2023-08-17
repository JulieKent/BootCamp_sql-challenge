-- 1.List the employee number, last name, first name, sex, and salary of each employee.
Select emp_no, last_name, first_name, sex, (
	select salary
	from salaries
	where employees.emp_no = salaries.emp_no) as "emp_salary"
from employees;

-- 2.List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name, last_name, hire_date
from employees
where DATE_PART('YEAR', hire_date) = '1986';

-- 3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
join employees 
on dept_manager.emp_no = employees.emp_no
join departments 
on dept_manager.dept_no = departments.dept_no;

-- 4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees 
on dept_emp.emp_no = employees.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no;

-- 5.List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6.List each employee in the Sales department, including their employee number, last name, and first name.
select dept_emp.emp_no, employees.last_name, employees.first_name
from dept_emp
join employees 
on dept_emp.emp_no = employees.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';

-- 7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees 
on dept_emp.emp_no = employees.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

-- 8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as frequency
from employees
group by last_name
order by frequency desc;
