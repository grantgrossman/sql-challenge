CREATE TABLE Titles (
    title_id varchar(255)  NOT NULL Primary Key,
    title varchar(255)  NOT NULL
);
CREATE TABLE Employees (
    emp_no int NOT NULL Primary Key,
    emp_title_id varchar(255) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    sex varchar(255) NOT NULL,
    hire_date date NOT NULL,
	Foreign Key(emp_title_id) references Titles(title_id)
);

CREATE TABLE Departments (
    dept_no varchar(255) NOT NULL Primary Key,
    dept_name varchar(255) NOT NULL
);

CREATE TABLE dept_manager (
    dept_no varchar(255) NOT NULL,
    emp_no int NOT NULL,
	Foreign Key(dept_no) references Departments(dept_no),
	Foreign Key(emp_no) references Employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no varchar(255) NOT NULL,
	Foreign Key(emp_no) references Employees(emp_no),
	Foreign Key(dept_no) references Departments(dept_no)
);

CREATE TABLE salaries (
    emp_no int NOT NULL,
    salary int NOT NULL,
	Foreign Key(emp_no) references Employees(emp_no)
);


