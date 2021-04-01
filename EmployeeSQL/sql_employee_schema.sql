-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Department" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Employee" (
    "emp_no" VARCHAR   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "emp_no"
     )
);


-- need to use composite key here bc dept no
-- and emp no are shared
CREATE TABLE "Department_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Department_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "Department_employees" (
    "emp_no" VARCHAR   NOT NULL,
    "dept_no" VARCHAR   NOT NULL
);

CREATE TABLE "Salaries" (
    "salary_id" VARCHAR   NOT NULL,
    "salary" BIGINT   NOT NULL
);

CREATE TABLE "Title" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_title_id" FOREIGN KEY("title_id")
REFERENCES "Title" ("title_id");

ALTER TABLE "Department_manager" ADD CONSTRAINT "fk_Department_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Department" ("dept_no");

ALTER TABLE "Department_manager" ADD CONSTRAINT "fk_Department_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

ALTER TABLE "Department_employees" ADD CONSTRAINT "fk_Department_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

ALTER TABLE "Department_employees" ADD CONSTRAINT "fk_Department_employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Department" ("dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_salary_id" FOREIGN KEY("salary_id")
REFERENCES "Employee" ("emp_no");
