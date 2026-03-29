use employees;
select * from Employees;

-- employees with age more the 30
select * from Employees where age > 30;
-- employess with age more than 30 from 'sales'
select * from Employees where age > 30 and department ='sales';
-- employees with age range 30-40
select * from Employees where age >=30 and age<=40;
select * from Employees where age between 30 and 40;
-- employees form sales or marketing
select * from Employees where department = 'sales' or department = 'Marketing';

-- seerching the name strating with jo
select *  from Employees where name like 'jo%';

-- geeting only not null value from the department 
select * from Employees where department is not null ;

-- detting only null values throuhg the table 
select * from Employees where department is not  null and  age is not null;

-- getting data using IN command
select * from Employees where department in('sales','Marketing');