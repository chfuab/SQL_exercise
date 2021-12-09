CREATE TABLE department(
	code int auto_increment,
    name varchar(50),
    budget float,
    primary key (code)
);

CREATE TABLE employees(
	ssn int auto_increment,
    name varchar(50),
    last_name varchar(50),
    department int,
    foreign key (department) references department(code),
    primary key (ssn)
);

insert into department (code, name, budget) values (14, 'IT', 65000);
insert into department (code, name, budget) values (37, 'Accounting', 15000);
insert into department (code, name, budget) values (59, 'Human Resources', 240000);
insert into department (code, name, budget) values (77, 'Research', 55000);

insert into employees (ssn, name, last_name, department) values (123234877, 'Michael', 'Rogers', 14);
insert into employees (ssn, name, last_name, department) values (222364883, 'Carol', 'Smith', 37);
insert into employees (ssn, name, last_name, department) values (326587417, 'Joe', 'Stevens', 37);
insert into employees (ssn, name, last_name, department) values (332569843, 'George', 'ODonell', 77);
insert into employees (ssn, name, last_name, department) values (546523478, 'John', 'Doe', 59);
insert into employees (ssn, name, last_name, department) values (631231482, 'David', 'Smith', 77);
insert into employees (ssn, name, last_name, department) values (654873219, 'Zacary', 'Efron', 59);
insert into employees (ssn, name, last_name, department) values (845657246, 'Kumar', 'Swamy', 14);

#Select all the data of employees that work in department 37 or department 77.
SELECT * FROM employees WHERE department = 37 OR department = 77;

#Select all the data of employees whose last name begins with an "S".
SELECT * FROM employees WHERE last_name LIKE 'S%';

#Select the sum of all the departments' budgets.
SELECT sum(budget) AS budget_sum FROM department;

#Select the number of employees in each department (you only need to show the department code and the number of employees).
SELECT count(ssn), department FROM employees GROUP By department;

#Select all the data of employees, including each employee's department's data.
SELECT * FROM employees LEFT JOIN department ON employees.department = department.code;

#Select the name and last name of each employee, along with the name and budget of the employee's department.
SELECT employees.name, employees.last_name, department.name, department.budget FROM employees LEFT JOIN department ON employees.department = department.code;

#Select the name and last name of employees working for departments with a budget greater than $60,000.
SELECT employees.name, employees.last_name FROM employees 
LEFT JOIN department ON employees.department = department.code
WHERE department.budget > 60000;

#Select the departments with a budget larger than the average budget of all the departments.
SELECT department.name FROM department WHERE department.budget > (Select avg(budget) from department);

#Select the names of departments with more than two employees.
select * FROM department RIGHT JOIN employees on 
department.code = employees.department
group by department.name
having count(employees.name) = 2;

#Select the name and lastname of employees working for departments with second lowest budget.
select name, last_name from employees where
department = (select code from department where
budget=(select min(budget) from department where budget >
(select min(budget) from department)));

#Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11.And Add an employee called "MaryMoore" in that department, with SSN 847-21-9811.
insert into department (code, name, budget) values (11, "Quality Assurance", 40000);
insert into employees (ssn, name, last_name, department) values (847219811, "Mary", "Moore", 11);

#Delete from the table all employees who work in departments with a budget greater than or equal to $60,000.
delete from employees where department in (select code from department
where budget >= 60000);


