-- Create the tables in the following order:
-- Titles
-- Employees
-- Departments
-- Dept_Manager
-- Dept_Employees
-- Salaries

create table titles
(
	title_id varchar primary key,
	title varchar
);
-- select * from titles;

create table employees
(
	emp_no int primary key,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	foreign key (emp_title_id) references titles(title_id)
);
-- select * from employees;

create table departments
(
	dept_no varchar primary key,
	dept_name varchar
);
-- select * from departments;

create table dept_managers
(
	dept_no varchar,
	emp_no int,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (dept_no, emp_no)
);
-- select * from dept_managers;

create table dept_emp
(
	emp_no int,
	dept_no varchar,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no, dept_no)
);
-- select * from dept_emp;

create table salaries
(
	emp_no int primary key,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);
-- select * from salaries;