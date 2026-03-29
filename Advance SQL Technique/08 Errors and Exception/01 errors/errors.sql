use swiggy;

-- 1 syntex errors
select * from restaurants;

-- 2 logical exception
select * from restaurants where rating >4.0 and rating < 2.0;

-- 3 data type exception
select * from restaurants where rating = 'high';

-- 4 performense exception
select * from restaurants where rating = 4.5 ;

-- 5 aggregate function error
select city , count(*) from restaurants;

