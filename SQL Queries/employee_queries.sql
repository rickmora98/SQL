-- List the following details of each employee:
-- employee number, last name, first name, sex, and salary.
select 
	employees.emp_no as "Employee Number", 
	last_name as "Last Name",
	first_name as "First Name", 
	sex as "Sex", 
	salary as "Salary"
from employees
join salaries on employees.emp_no = salaries.emp_no;


-- List first name, last name, and hire date for employees who were hired in 1986:
select 
	first_name as "First Name",
	last_name as "Last Name",
	hire_date as "Hire Date"
from employees
where hire_date between '1986-01-01' and '1986-12-31';


-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
select 
	departments.dept_no as "Department #",
	dept_name as "Department Name",
	dept_managers.emp_no as "Manager ID",
	last_name as "Last Name",
	first_name as "First Name"
from dept_managers
join departments on dept_managers.dept_no = departments.dept_no
join employees on dept_managers.emp_no = employees.emp_no;


-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select
	employees.emp_no as "Employee ID",
	last_name as "Last Name",
	first_name as "First Name",
	dept_name as "Department"
from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B.":
select
	first_name as "First Name",
	last_name as "Last Name",
	sex as "Sex"
from employees
where first_name = 'Hercules' and last_name like 'B%';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name:
select
	employees.emp_no as "Employee ID",
	last_name as "Last Name",
	first_name as "First Name",
	dept_name as "Department"
from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name:
select
	employees.emp_no as "Employee ID",
	last_name as "Last Name",
	first_name as "First Name",
	dept_name as "Department"
from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_name in ('Sales', 'Development');


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name:
select
	last_name as "Last Name",
	count(last_name) as "Frequency"
from employees
group by last_name
order by last_name desc;


-- List the top 25 paid employees, including their name, title, department, gender, and their salary:
select
	last_name as "Last Name",
	first_name as "First Name",
	sex as "Gender",
	title as "Job Title",
	dept_name as "Department",	
	salary as "Salary"
from employees
join salaries on employees.emp_no = salaries.emp_no
join titles on employees.emp_title_id = titles.title_id
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
order by salary desc
limit 25;
