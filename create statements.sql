use work;
create table departments (
dept_no varchar(24) NOT NULL,
dept_name varchar(24) NOT NULL,
primary key(dept_no)
);
drop table dept_emp;
create table dept_emp(
emp_no int NOT NULL,
dept_no varchar(24) NOT NULL,
primary key(emp_no, dept_no),
foreign key(emp_no) references employees(emp_no),
foreign key(dept_no) references departments(dept_no)
);
drop table dept_manager;
create table dept_manager(
dept_no varchar(24) NOT NULL,
emp_no int NOT NULL,
primary key(emp_no, dept_no),
foreign key(emp_no) references employees(emp_no),
foreign key(dept_no) references departments(dept_no)
);
drop table employees;
create table employees(
emp_no int NOT NULL,
emp_title_id varchar(24) NOT NULL,
birth_date varchar(24) NOT NULL,
first_name varchar(24) 	NOT NULL,
last_name varchar(24) NOT NULL,
sex varchar(24) NOT NULL,
hire_date varchar(24) NOT NULL,
primary key(emp_no)
);
drop table salaries;
create table salaries(
emp_no int NOT NULL,
salary int NOT NULL,
primary key(emp_no),
foreign key(emp_no) references employees(emp_no)
);
drop table titles;
create table titles(
title_id varchar(24) NOT NULL,
title varchar(24) NOT NULL,
primary key(title_id, title)
);

