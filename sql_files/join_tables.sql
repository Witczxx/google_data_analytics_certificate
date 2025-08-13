-- Block 1 - Creating Database
CREATE DATABASE employee_data;

-- Block 2 - Creating 1st Table
CREATE TABLE departments(
    "name" TEXT,
    "department_id" INTEGER);

-- Block 3 - Creating 2nd Table
CREATE TABLE employees (
    "name" TEXT,
    "department_d" INTEGER,
    "role" TEXT);

-- Block 4 - Importing 1st Table
COPY departments
FROM '/Users/patrick/files/data_analytics/csv_files/joins_departments.csv'
DELIMITER ',' CSV HEADER;

-- Block 5 - Importing 2nd Table
COPY employees
FROM '/Users/patrick/files/data_analytics/csv_files/joins_employees.csv'
DELIMITER ',' CSV HEADER;

-- Block 6 - Check Table 1
SELECT * FROM departments

-- Block 7 - Check Table 2
SELECT * FROM employees

-- Block 8 - Wrong Column name
ALTER TABLE employees
RENAME COLUMN department_d TO department_id; 

-- Block 9 - Inner Join
-- Only shows complete matches
-- Where everything is filled
SELECT
    employees.name AS employee_name,
    employees.role AS employee_role,
    departments.name AS department_name
FROM
    employees AS employees
INNER JOIN
    departments AS departments ON employees.department_id = departments.department_id;

-- Block 10 - Right Join
-- Shows all results from the second mentioned table
-- here: e.d_id = d.d_id
-- So it shows all from departments
SELECT
    employees.name AS employee_name,
    employees.role AS employee_role,
    departments.name AS department_name
FROM
    employees AS employees
LEFT JOIN
    departments AS departments ON employees.department_id = departments.department_id;

-- Block 11 - Left Join
-- Shows all results form the first mentioned table
-- here: e.d_id = d.d_id
-- So it shows all from employees
SELECT
    employees.name AS employee_name,
    employees.role AS employee_role,
    departments.name AS department_name
FROM
    employees AS employees
RIGHT JOIN
    departments AS departments ON employees.department_id = departments.department_id;

-- Block 12 - Full Outer Join
-- Shows all results from both tables
-- no matter if there are no matches
-- it just fills Nulls everywhere
SELECT
    employees.name AS employee_name,
    employees.role AS employee_role,
    departments.name AS department_name
FROM
    employees AS employees
FULL OUTER JOIN
    departments AS departments ON employees.department_id = departments.department_id;
