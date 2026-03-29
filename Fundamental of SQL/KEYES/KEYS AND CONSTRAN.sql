use employees;

-- primary keys
DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);
SELECT * FROM Employees;

-- composite key
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    order_id SERIAL,
    customer_id INT,
    order_date DATE,
    PRIMARY KEY (order_id, customer_id)
);
SELECT * FROM Orders;

-- Foreign Key
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Employees (employee_id)
);
SELECT * FROM Orders;

-- CONSTRAINT
-- Unique Constraint
DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
    employee_id SERIAL PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    name VARCHAR(50),
    department VARCHAR(50)
);
SELECT * FROM Employees;

-- Composite Unique Constraint
DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
    employee_id SERIAL PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    phone INT UNIQUE,
    name VARCHAR(50),
    department VARCHAR(50),
    UNIQUE (email, phone)
);
SELECT * FROM Employees;

-- Check Constraint
DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
    employee_id SERIAL PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    age INT CHECK (age >= 18),
    phone INT UNIQUE,
    name VARCHAR(50),
    department VARCHAR(50),
    UNIQUE (email, phone)
);
SELECT * FROM Employees;