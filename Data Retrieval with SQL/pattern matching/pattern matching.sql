use gfg;
select * from gfgdata;

-- find the product where the product end with savepoint s
select * from  gfgdata where product_name like '%s';

-- find the products where the brand name contain "ad"
select * from  gfgdata where product_name like '%s';

-- find the products where the brand name start with p and end with s
select * from  gfgdata where brand_name like 'p%s';

-- find the products where the product name  contain sho
select * from  gfgdata where product_name like '%SHO%';


