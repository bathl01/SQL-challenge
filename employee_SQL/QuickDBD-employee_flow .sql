-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/daKXXn
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- SQL Challenge Employee DB schema diagram.
-- 6 tables with relationships
-- code to drop the 6 tables for reruns 
DROP TABLE "titles";
DROP TABLE "salaries";
DROP TABLE "dept_manager";
DROP TABLE "dept_emp";
DROP TABLE "employees";
DROP TABLE "department";

CREATE TABLE "titles" (
    "id"  SERIAL  NOT NULL,
    "title_id" char(5)   NOT NULL,
    "title" varchar(30)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "id"  SERIAL  NOT NULL,
    "emp_no" int   NOT NULL,
    "emp_title" char(5)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "sex" char(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "department" (
    "id"  SERIAL  NOT NULL,
    "dept_no" char(4)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "salaries" (
    "id"  SERIAL  NOT NULL,
    "emp_no" int   NOT NULL,
    "salary" float   NOT NULL
);

CREATE TABLE "dept_emp" (
    "id"  SERIAL  NOT NULL,
    "emp_no" int   NOT NULL,
    "dept_no" char(4)   NOT NULL
);

CREATE TABLE "dept_manager" (
    "id"  SERIAL  NOT NULL,
    "dept_no" char(4)   NOT NULL,
    "emp_no" int   NOT NULL
);

-- add the foreign keys to the 6 tables

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

-- add the indexes to the 6 tables

CREATE INDEX "idx_titles_id"
ON "titles" ("id");

CREATE INDEX "idx_employees_id"
ON "employees" ("id");

CREATE INDEX "idx_department_id"
ON "department" ("id");

CREATE INDEX "idx_salaries_id"
ON "salaries" ("id");

CREATE INDEX "idx_dept_emp_id"
ON "dept_emp" ("id");

CREATE INDEX "idx_dept_manager_id"
ON "dept_manager" ("id");

