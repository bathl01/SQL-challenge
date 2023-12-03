# SQL-challenge
Module 9 Challenge
# Background
A research project about people whom Pewlett Hackard (a fictional company) employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
# Objectives
This Challenge is divided into three parts: data modeling, data engineering, and data analysis. Whuich include designing the tables using QuickDBD that will hold the CSV data, using pgAdmin to create the tables, import the CSVs into a SQL database, and answer a series of questions about the data.  
# Data Modeling
Used QuickDBD below id the final ERD created
![image](https://github.com/bathl01/SQL-challenge/assets/145512041/b7c4597f-4e9b-4adc-af02-e6fed4cb5ea7)
full image copy of the schema and ERD from QuickDBD.
![image](https://github.com/bathl01/SQL-challenge/assets/145512041/32d60896-beb0-4f0c-a273-8ce844460d2b)
# Data Engineering
The schema created in QuickDBD was exported to pgAdmin for createing the tables and importing the csv files to populate the tables. below is a screen print of the data loads showing they were all sucessfull.
the SQL is in the employee_SQL folder QuickDBD-employee_flow .sql
Below is a screen print of the importing of the data from the csv files to the tables
![image](https://github.com/bathl01/SQL-challenge/assets/145512041/f6821828-18d0-48ca-b631-532e04c20714)
# Data Analysis
the SQL is in the employee_SQL folder employee-queries.sql below are the questions for each query the output for each item is in the folder Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee (2 points)
2. List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
3. List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
6. List each employee in the Sales department, including their employee number, last name, and first name (2 points)
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
# Acknowledgements  
instructor Dallin Whitaker for asssistance with indexes in Quick DBD, Stack overflow, GeeksforGeeks, web sites for coding syntax for pgAdmin SQL
