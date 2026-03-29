USE employees;

-- Creating a Table
DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE
);
SELECT * FROM Employees;

-- 1. Inserting a Single Row
INSERT INTO Employees (employee_id, first_name, last_name, department_id, hire_date)
VALUES (1, 'Ashish', 'Jangra', 1, '2021-07-16');
SELECT * FROM Employees;

-- 2. Inserting multipal rows
INSERT INTO Employees (employee_id, first_name, last_name, department_id, hire_date)
VALUES 
    (2, 'Manish', 'Kumar', 2, '2021-10-16'),
    (3, 'Sakshi', 'Awasthi', 2, '2021-10-16'),
    (4, 'Avneet', 'Kaur', 3, '2021-10-16');
SELECT * FROM Employees;

-- 3. Adding partial data
INSERT INTO Employees (first_name, last_name)
VALUES ('Ashish', 'Jangra');
SELECT * FROM Employees;

-- 4. inserting data in different order
INSERT INTO Employees (department_id, hire_date, last_name, first_name)
VALUES (1, '2022-10-10', 'Sakari', 'Prakash');
SELECT * FROM Employees;

-- 4. adding data without order
INSERT INTO Employees
VALUES (11, 'Ashish', 'Jangra', 5, '2024-10-10');
SELECT * FROM Employees;

--  ADDING CURRENT DATA AND DIFFULT VALUE
DROP TABLE IF EXISTS ExampleTable;
CREATE TABLE IF NOT EXISTS ExampleTable (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Active'
);
SELECT * FROM ExampleTable;

INSERT INTO ExampleTable (name) VALUES ('Ashish');
SELECT * FROM ExampleTable;
INSERT INTO ExampleTable (name) VALUES ('Ashish'), ('Manish'), ('Parag');
SELECT * FROM ExampleTable;

INSERT INTO ExampleTable (name, status) VALUES ('Ashish', 'Inactive'), ('Manish', 'Inactive'), ('Parag', 'Inactive');
SELECT * FROM ExampleTable;