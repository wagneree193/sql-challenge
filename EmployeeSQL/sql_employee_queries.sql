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

