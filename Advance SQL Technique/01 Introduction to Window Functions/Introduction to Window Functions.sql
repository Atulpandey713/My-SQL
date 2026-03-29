use swiggy;
select * from restaurants;

-- 1 create a new column to average rating through the restaurents  data
select *, round(avg(rating)over(),2) as 'avg_rating' from restaurants;
-- 2 create a new column contaning average rating_count through the restaurant data set
select *, round(avg(rating_count)over(),2) as 'avg_rating_count' from restaurants;
-- 3 create new column contaning average cost through the restaurant data set
select *, rand(avg(cost)over(),2) as 'avg_cost' from restaurants;
-- 4 create a new column contaning average,min,max of cost ,rating,rating_count,of restaurant through out the data set
select id, name, city, cuisine, rating,
   round(max(rating)over(),2) as 'max_rating',
   round(avg(rating)over(),2) as 'avg_rating',
   round(min(rating)over(),2) as 'min_rating',
  
   round(max(cost)over(),2) as 'max_cost',
   round(avg(cost)over(),2) as 'avg_cost',
   round(min(cost)over(),2) as 'min_cost'
   
from restaurants;

-- 5 create a new column contaning average cost of the city where the especific restaurant 
select *, round(avg(cost)over(partition by city)) as 'avg_cost' from restaurants;
-- 6 create a new column contaning average cost of the cauisin of the city of the specific  restaurant
select *, round(avg(cost)over(partition by cuisine)) as 'avg_cost' from restaurants; 
-- 7 create both column together
select *, 
   round(avg(cost)over(partition by city)) as 'avg_cost_city', 
   round(avg(cost)over(partition by cuisine)) as 'avg_cost_cuisine'
from restaurants;
-- 8 list the restaurant whose cost is more then the average cost of thge restaurants
select * from restaurants where cost > (select avg(cost) from restaurants);
select * from (select *, avg(cost)over()as 'avg_cost' from restaurants) t where t.cost > t.avg_cost;

-- 9 list the restaurant whose cost is grater the average cost of the cuisine
select * from (select *, avg(cost)over(partition by cuisine)as 'avg_cost' from restaurants) t where t.cost > t.avg_cost;