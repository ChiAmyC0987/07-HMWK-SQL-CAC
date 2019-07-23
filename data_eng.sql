CREATE TABLE "departments" (
    "dept_no" VARCHAR(5) NOT Null,
    "dept_name" VARCHAR(25) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_manager" (
  "dept_no" VARCHAR(5) NOT NULL,
  "emp_no" int NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL
);


CREATE TABLE "dept_emp" (
  "emp_no" int NOT NULL,
  "dept_no" VARCHAR(5) NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL
);

CREATE TABLE "employees" (
  "emp_no" int NOT NULL,
  "birth_date" date NOT NULL,
  "first_name" VARCHAR(25),
  "last_name" VARCHAR(25),
  "gender" VARCHAR(1),
  "hire_date" date NOT NULL,
	CONSTRAINT "pk_employee" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
  "emp_no" int NOT NULL,
  "title" VARCHAR(25),
  "from_date" date NOT NULL,
  "to_date" date NOT NULL
);

CREATE TABLE "salaries" (
  "emp_no" int NOT NULL,
  "salary" int NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL
);

ALTER TABLE "departments" ADD FOREIGN KEY ("dept_no") REFERENCES "dept_manager" ("dept_no");

ALTER TABLE "dept_emp" ADD FOREIGN KEY ("emp_no") REFERENCES "dept_manager" ("emp_no");

ALTER TABLE "employees" ADD FOREIGN KEY ("emp_no") REFERENCES "dept_emp" ("emp_no");

ALTER TABLE "employees" ADD FOREIGN KEY ("emp_no") REFERENCES "titles" ("emp_no");

ALTER TABLE "titles" ADD FOREIGN KEY ("emp_no") REFERENCES "salaries" ("emp_no");