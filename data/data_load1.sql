-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/6ZSXBH
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).
drop table departments cascade;
drop table dept_manager cascade;
drop table dept_emp cascade;
drop table employees cascade;
drop table titles cascade; 
drop table salaries cascade;

CREATE TABLE "departments" (
    "dept_no" varchar(5) NOT NULL,
    "dept_name" varchar(25)  NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(5)   NOT NULL,
    "emp_no" int  NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     ),
	CONSTRAINT "fk_dept_manger_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(5)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
	CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no", "dept_no"
     ),
	CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no")
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(25) NOT  NULL,
    "last_name" varchar(25)  NOT NULL,
    "gender" varchar(1)  NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees_emp_no" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "emp_no" int   NOT NULL,
    "title"  varchar(25)   NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
	CONSTRAINT "pk_titles" PRIMARY KEY (
        "emp_no", "from_date"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
	CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no", "from_date"
     )
);

