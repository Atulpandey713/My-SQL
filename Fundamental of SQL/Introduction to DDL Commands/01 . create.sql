-- creating first table
drop table if exists employees;
CREATE TABLE Employees (employee_id INT,name VARCHAR(50) ,age INT ,department VARCHAR(50));
select * from employees

-- table with constrain
drop table if exists employee;
CREATE TABLE Employee(
    employee_id INT,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    department VARCHAR(50)
);
select * from employees;

-- 
drop table if exists employee;
CREATE TABLE Employee(
    employee_id INT,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    department VARCHAR(50),
    hire_date date);
select * from employees;