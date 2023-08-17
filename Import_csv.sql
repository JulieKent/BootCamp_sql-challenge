COPY titles(
    title_id,
    title
)
FROM '/Users/julie/psql_temp/titles.csv'
DELIMITER ','
CSV HEADER;

COPY departments(
    dept_no,
    dept_name
)
FROM '/Users/julie/psql_temp/departments.csv'
DELIMITER ','
CSV HEADER;

SET datestyle TO iso, mdy;
COPY employees(
    emp_no,
    emp_title_id,
    birth_date,
    first_name,
	last_name,
	sex,
	hire_date
)
FROM '/Users/julie/psql_temp/employees.csv'
DELIMITER ','
CSV HEADER;

COPY dept_emp(
    emp_no,
	dept_no
)
FROM '/Users/julie/psql_temp/dept_emp.csv'
DELIMITER ','
CSV HEADER;

COPY dept_manager(
	dept_no,
	emp_no
)
FROM '/Users/julie/psql_temp/dept_manager.csv'
DELIMITER ','
CSV HEADER;

COPY salaries(
	emp_no,
	salary
)
FROM '/Users/julie/psql_temp/salaries.csv'
DELIMITER ','
CSV HEADER;