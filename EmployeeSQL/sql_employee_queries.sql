SELECT *
FROM "Employee";

-- list employee number, last name, first name, sex, salary
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary 
FROM "Employee" as emp
JOIN "Salaries" as sal
on emp.emp_no = sal.salary_id;

-- checking format of hire date
SELECT hire_date
FROM "Employee";

-- list first name, last name and hire date for employees hired in 1986
SELECT CONVERT (VARCHAR, hire_date);

SELECT last_name, first_name, hire_date
FROM "Employee"
WHERE CONVERT(VARCHAR, hire_date);


--list the manager of each department with department number, department name, mgr employee number, last name, first name
SELECT dep.dept_no, dep.dept_name, mgr.emp_no, emp.last_name, emp.first_name
FROM "Department" as dep
JOIN "Department_manager" as mgr
ON dep.dept_no = mgr.dept_no
JOIN "Employee" as emp
ON mgr.emp_no = emp.emp_no

--list the department of each employee with employee number, last name, first name, department name
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM "Employee" as emp
JOIN "Department_employees" as depemp
ON emp.emp_no = depemp.emp_no
JOIN "Department" as dep
on depemp.dept_no = dep.dept_no

--list first name, last name and sex for employees whos first name is hercules and last names begin with b
SELECT first_name, last_name, sex
FROM "Employee"
WHERE first_name = 'Hercules'
AND last_name like 'B%';

--list all employees in sales department, employee number, last name, first name and dept name
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM "Employee" as emp
JOIN "Department_employees" as depemp
on emp.emp_no = depemp.emp_no
JOIN "Department" as dep
on depemp.dept_no = dep.dept_no
WHERE dept_name = 'Sales';