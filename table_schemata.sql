﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE department (
    dept_no varchar(30)   NOT NULL,
    dept_name varchar(30)   NOT NULL,
    CONSTRAINT pk_department PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no varchar(30)   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL
);

CREATE TABLE dept_manager (
    dept_no varchar(30)   NOT NULL,
    emp_no int   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL
);

CREATE TABLE employees (
    emp_no int   NOT NULL,
    birthdate varchar(30)   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    gender varchar(30)   NOT NULL,
    hire_date varchar(30)   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL
);

CREATE TABLE titles (
    emp_no int   NOT NULL,
    title varchar(30)   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL
);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES department (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES department (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE titles ADD CONSTRAINT fk_titles_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

