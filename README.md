# BootCamp_sql-challenge

## Data Modelling
### Inspect the CSV files, and then sketch an ERD of the tables.
Quick Database Diagrams app was used to develop the ERD https://www.quickdatabasediagrams.com/

Link to resulting diagram documentation: [QuickDBD-Free Diagram](https://github.com/JulieKent/BootCamp_sql-challenge/blob/main/QuickDBD-Free%20Diagram.pdf)

Link to Table Structure Image: [Table Structure](https://github.com/JulieKent/BootCamp_sql-challenge/blob/main/Table%20Structure.PNG)

## Data Engineering
1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
    * Remember to specify the data types, primary keys, foreign keys, and other constraints.
    * For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.
    * Be sure to create the tables in the correct order to handle the foreign keys.
2. Import each CSV file into its corresponding SQL table.

### Solution_point 1
Tables created in the following order to support application of required foreign keys:
1. titles
2. departments
3. employees
4. dept_emp
5. dept_manager
6. salaries

Link to Table Creation SQL: [Create_Tables](https://github.com/JulieKent/BootCamp_sql-challenge/blob/main/Create_Tables.sql)

### Solution_point 2
Additional line of code added to support a change in the datatype for the DATE columns prior to importing csv to the employees table:

Sourced and adapted from: https://dba.stackexchange.com/questions/290762/parsing-date-while-copying-csv-file-into-postgresql-table

```sql
SET datestyle TO iso, mdy;
```
csv's imported in the same order as tables created to avoid foreign keys conflicts

csv's saved to a temporary folder with read permissions applied to support coded importing

Link to CSV import SQL: [Import_csv](https://github.com/JulieKent/BootCamp_sql-challenge/blob/main/Import_csv.sql)

## Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Link to Data Analysis SQL: [Data_Analysis](https://github.com/JulieKent/BootCamp_sql-challenge/blob/main/Data_Analysis.sql)
