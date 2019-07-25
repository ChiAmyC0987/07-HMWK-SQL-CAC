-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/6ZSXBH
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "departments" (
    "dept_no" varchar(5) NOT NULL,
    "dept_name" varchar(25)  NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);
INSERT INTO departments (dept_no, dept_name, type) VALUES
(10, 1, 'Zeus', 'Dog'),dept_no	dept_name
('d001', 'Marketing')
('d002', 'Finance')
('d003', 'Human Resources')
('d004', 'Production')
('d005	Development
('d006	Quality Management
('d007	Sales
('d008	Research
('d009	Customer Service

(11, 1, 'Fido', 'Dog'),
(12, 2, 'Kevin', 'Dog'),
(13, 3, 'Sprinkles', 'Cat'),
(14, 4, 'Jumper', 'Cat'),
(15, 5, 'Hoppy', 'Rabbit'),
(16, 6, 'Rex', 'Dog'),
(17, 6, 'Carrot', 'Rabbit');



CREATE TABLE "dept_manager" (
    "dept_no" varchar(5)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(5)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(5)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(25)   NULL,
    "last_name" varchar(25)   NULL,
    "gender" varchar(1)  NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "emp_no" int   NOT NULL,
    "title"  varchar(25)   NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "titles" ("emp_no");

