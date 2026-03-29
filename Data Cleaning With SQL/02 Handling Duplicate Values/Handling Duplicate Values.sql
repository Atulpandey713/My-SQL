select * from messy_indian_dataset;

-- finding only unique row
select distinct * from messy_indian_dataset;

-- find unique values based on id
select id
from messy_indian_dataset
group by id
order by id;
-- finding unique values based on name 
select name
from messy_indian_dataset
group by name
order by name;

-- finding unique value based on id using rank
select id, name, age, gender, email, phone_number, city, state, purchase_amount, purchase_date from (
         select *, row_number() over(partition by id order by id) as 'rank' from messy_indian_dataset
         )as subtable
where subtable.rank = 1;

