

--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no as "Employee number", employees.last_name as "Last Name", employees.first_name as "First Name", employees.sex as "Sex", salaries.salary as "Salary"
From employees 
inner join salaries on 
employees.emp_no=salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name as "First Name",last_name as "Last Name",hire_date as "Hire Date"
From employees 
where hire_date between '01/01/1986' and '12/31/1986'
--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select departments.dept_no as "Department Number", departments.dept_name as "Department Name", dept_manager.emp_no as "Employee Number", employees.last_name as "Last Name",employees.first_name as "First Name"
From Departments
inner join dept_manager on
departments.dept_no=dept_manager.dept_no
inner join employees on
dept_manager.emp_no=employees.emp_no
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no as "Employee Number",employees.last_name as "Last Name",employees.first_name as "First Name", departments.dept_name as "Department Name"
from employees
inner join dept_emp on 
employees.emp_no=dept_emp.emp_no
inner join departments on 
dept_emp.dept_no=departments.dept_no
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name as "First Name",last_name as "Last Name", sex as "Sex"
from employees 
where first_name = 'Hercules' and last_name like 'B%'
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no as "Employee Number",employees.last_name "Last Name",employees.first_name as "First Name",departments.dept_name as "Department Name"
from employees 
inner join dept_emp on 
employees.emp_no=dept_emp.emp_no
inner join departments on 
dept_emp.dept_no=departments.dept_no
where dept_name = 'Sales'
--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no as "Employee Number",employees.last_name as "Last Name",employees.first_name as "First Name",departments.dept_name as "Department Name"
from employees 
inner join dept_emp on 
employees.emp_no=dept_emp.emp_no
inner join departments on 
dept_emp.dept_no=departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development'
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name as "Last Name",count(last_name) as "Frequency"
from employees
group by last_name
order by count(last_name) desc;

