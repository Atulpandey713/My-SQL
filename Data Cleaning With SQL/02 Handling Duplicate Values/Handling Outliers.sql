select * from messy_indian_dataset;

-- find outlirs based on z score
select *,
       abs(purchase_amount - avg(purchase_amount) over()) / stddev(purchase_amount) over() as 'z_score'
from messy_indian_dataset;

-- remove outliers based on specific Z-score
select * from
(
select *,
       abs(purchase_amount - avg(purchase_amount) over()) / stddev(purchase_amount) over() as 'z_score'
from messy_indian_dataset
)as sub_table where sub_table.z_score < 2;