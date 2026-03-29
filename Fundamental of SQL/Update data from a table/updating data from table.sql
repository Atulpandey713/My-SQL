-- creating and polulation in table
USE employees;
DROP TABLE IF EXISTS People;
CREATE TABLE People (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- Insert sample data into the table
INSERT INTO People (first_name, last_name, age, city)
VALUES 
    ('John', 'Doe', 30, 'New York'),
    ('Jane', 'Smith', 25, 'Los Angeles'),
    ('Michael', 'Johnson', 40, 'Chicago'),
    ('Emily', 'Brown', 35, 'Houston'),
    ('David', 'Jones', 28, 'San Francisco'),
    ('Sarah', 'Davis', 32, 'Seattle'),
    ('Robert', 'Wilson', 45, 'Boston'),
    ('Jennifer', 'Martinez', 27, 'Miami'),
    ('William', 'Taylor', 38, 'Atlanta'),
    ('Jessica', 'Anderson', 33, 'Dallas'),
    ('Daniel', 'Thomas', 29, 'Philadelphia'),
    ('Maria', 'Jackson', 42, 'Phoenix'),
    ('James', 'White', 31, 'Denver'),
    ('Elizabeth', 'Harris', 36, 'Austin'),
    ('Christopher', 'Clark', 39, 'San Diego'),
    ('Amanda', 'Lewis', 26, 'Portland'),
    ('Matthew', 'Walker', 34, 'Detroit'),
    ('Ashley', 'Allen', 37, 'Las Vegas'),
    ('Joseph', 'Young', 41, 'Nashville'),
    ('Stephanie', 'Scott', 24, 'Orlando');
SELECT * FROM People;

-- update based on primary key( or age)
UPDATE People
SET age = 40
WHERE person_id = 1;
SELECT * FROM People;

-- Update city Based on Last Name
-- UPDATE People
-- SET city = 'Austin'
-- WHERE last_name = 'Smith';
-- SELECT * FROM People;

--  update age of all people under 30 to 30
UPDATE people
set age = 30
where age < 30;
select * from people

-- Update Age of All People in a Specific City

update People
SET age = age + 1
WHERE city = 'New York';
SELECT * FROM People;

-- Update First Name of People Whose Age is Greater than 35
UPDATE People
SET first_name = 'Senior'
WHERE age > 35;
SELECT * FROM People;


