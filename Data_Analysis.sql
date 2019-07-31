-----Task 1-------
select 
	employees.emp_no,
	last_name,
	first_name,
	gender,
	salary
from employees
join salaries
	on employees.emp_no = salaries.emp_no
	
-----Task 2-------
select *
from employees
where hire_date like '1986%'

-----Task 3-------
select 
	department.dept_no,
	department.dept_name,
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_manager.from_date,
	dept_manager.to_date
from department
join dept_manager
	on department.dept_no = dept_manager.dept_no
join employees
	on dept_manager.emp_no = employees.emp_no
	
-----Task 4-------
select 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	department.dept_name
from employees
join dept_emp
	on dept_emp.emp_no = employees.emp_no
join department
	on department.dept_no = dept_emp.dept_no
	
-----Task 5-------
select *
from employees
where first_name = 'Hercules' and last_name like 'B%'

-----Task 6-------
select 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	department.dept_name
from employees
join dept_emp 
	on employees.emp_no = dept_emp.emp_no
join department
	on dept_emp.dept_no = department.dept_no
where department.dept_name = 'Sales'

-----Task 7-------
select 
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	department.dept_name
from employees
join dept_emp 
	on employees.emp_no = dept_emp.emp_no
join department
	on dept_emp.dept_no = department.dept_no
where department.dept_name in ('Development','Sales');

-----Task 8-------
select last_name ,count(last_name) as "Count Last Names"
from employees
group by last_name 
order by "Count Last Names" desc