use work;

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
/*SELECT <columsn> FROM <table> 
WHERE <condition>
ORDER BY <COLUMN> ASC or DESC */

SELECT 
	emp_no as EmployeeNumber,
    first_name as FirstName,
    last_name as LastName,
    sex  as Gender
FROM employees;

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT
	emp_no as EmployeeNumber,
    first_name as FirstName,
    last_name as LastName,
    hire_date as hireDate
FROM employees
WHERE
	hire_date LIKE "%1986";
    
    -- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT
	d.dept_no as DeptNumber,
    d.dept_name as DeptName,
	dm.emp_no as mgrEmpNumber,
    e.first_name as mgrFirstName,
    e.last_name as mgrLastName
FROM departments as d
INNER JOIN dept_manager as dm ON dm.dept_no = d.dept_no
INNER JOIN employees e ON e.emp_no = dm.emp_no;

SELECT 
	emp_no as EmployeeNumber,
    first_name as FirstName,
    last_name as LastName,
    sex  as Gender
FROM employees
WHERE
		first_name LIKE "Hercules" AND
        last_name LIKE "B%"; 
SELECT
	d.dept_no as DeptNumber,
    d.dept_name as DeptName,
	dm.emp_no as mgrEmpNumber,
    e.first_name as mgrFirstName,
    e.last_name as mgrLastName
FROM departments as d
INNER JOIN dept_manager as dm ON dm.dept_no = d.dept_no
INNER JOIN employees e ON e.emp_no = dm.emp_no
WHERE	
	d.dept_name = "sales"
    
SELECT
	d.dept_no as DeptNumber,
    d.dept_name as DeptName,
	dm.emp_no as mgrEmpNumber,
    e.first_name as mgrFirstName,
    e.last_name as mgrLastName
FROM departments as d
INNER JOIN dept_manager as dm ON dm.dept_no = d.dept_no
INNER JOIN employees e ON e.emp_no = dm.emp_no
WHERE
	d.dept_name = "sales" or d.dept_name = "Development"
    
  SELECT
  last_name as lastName,
  count(last_name) FROM employees GROUP BY(last_name)
  ORDER BY count(last_name) DESC 
    
    
    
    
