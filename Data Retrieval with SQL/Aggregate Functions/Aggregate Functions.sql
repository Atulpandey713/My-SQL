use gfg;
SELECT * FROM gfgdata;
-- Finding the number of products in the dataset

SELECT count(*) as total_products FROM gfgdata ;
-- SELECT count (product_name) as total_products FROM gfgdata;

-- Finding the average discounted price of products in the dataset
SELECT avg(discounted_price) as average_price FROM gfgdata ;
SELECT avg(marked_price) as average_price FROM gfgdata;

-- Finding the most expensive product on myntra
SELECT max(discounted_price) as average_price FROM gfgdata;
SELECT max(marked_price) as average_price FROM gfgdata;

-- Finding the least expensive product on myntra
SELECT min(discounted_price) as average_price FROM gfgdata ;
SELECT min(marked_price) as average_price FROM gfgdata ;

-- Find the total rating count of all products
SELECT sum(rating_count) as total_rating FROM gfgdata ;

-- Find the total unique brands
SELECT DISTINCT (brand_name) as brands FROM gfgdata ;

-- Find the number of unique brands
SELECT count(DISTINCT(brand_name)) as total_brands FROM gfgdata ;
