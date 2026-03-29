use employees;
select * from employees;
-- Basic case for sels and marketing team
select name,
case department
   when  'sales' then 'sales team'
   when 'Marketing' then 'Marketing team'
   else 'other'
end as employees_name from employees;

-- case with respect age 
select name,
case 
   when age < 30 then 'young'
   when  'marketing' then 'marketing team'
   else 'other'
end as employees_name from employees;

--
select name,
case 
   when age < 30 then 'young'
   when age <=30 and age <= 40 then 'mid-aged'
   else 'senior'
end as employees_name from employees;

-- Nested Case
select name,
case
    when age <= 30 then
        case
		   when department =  'sales' then 'Jr sales'
           else 'junior'
		end
	when age >= 30 and age <= 40 then 'Middle'
    else 'senior'
end as employee_name from employees;


           

  
