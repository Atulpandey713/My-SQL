use gfg;

select * from gfgdata;

-- show specific column
select product_name,brand_name from gfgdata;

-- show specific column in specific order;
select brand_name,product_name from gfgdata;

-- create new column with mathmatical function
select product_name, brand_name, marked_price, discounted_price, marked_price - discounted_price AS discounted_amount from gfgdata;

-- create new column with mathmatical function|| marking Rating count *Rating 
select product_name, brand_name, rating, rating_count, rating*rating_count AS rating_filter from gfgdata;

-- create new column with mathmatical function || marking discount persentage
select product_name, brand_name, marked_price, discounted_price, ((marked_price - discounted_price)/ marked_price)*100 AS discounted_amount from gfgdata;

-- finding unique values
select distinct(brand_name) as unique_brands from gfgdata;

-- adding where coluse
select product_name, brand_name, marked_price, discounted_price  from  gfgdata  where brand_tag = 'Adidas';