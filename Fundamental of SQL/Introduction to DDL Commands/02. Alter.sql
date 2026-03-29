drop table if exists employee;
CREATE TABLE Employee(
    employee_id INT,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    department VARCHAR(50)
);
select * from employees;

-- adding new column in the table
alter table employee add column mail varchar(50);
select * from employees;

-- rename the column
alter table employees rename column  employee_id to id;
select * from employees;

-- drop the column 
alter table employees drop column mail;
select * from employees;
