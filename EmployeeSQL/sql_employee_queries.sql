SELECT *
FROM "Employee";

-- list employee number, last name, first name, sex, salary
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary 
FROM "Employee" as emp
JOIN "Salaries" as sal
on emp.emp_no = sal.salary_id;


