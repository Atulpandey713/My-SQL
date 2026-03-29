use swiggy;
-- select all the column in the restaurant of  table the alies 'r'
select * from restaurants;

drop table if exists sirsa_restaurants;
drop table if exists  city_statistics;
drop table if exists expansive_restaurants;
-- create a new table sirsa_rastaurants whose cantain only sirsa
create  table if not exists sirsa_restaurants as select * from restaurants where  city = 'sirsa';
select * from sirsa_restaurants;
-- create a new table of 'city_statistics' cantaining aggrigate statistic for each city
create table if not exists city_statistics as
   select  city, avg(rating) as avg_rating, count(*)  as num_of_restaurants from restaurants group by city;
select * from city_statistics;

-- create a new table expansive restaurant  contaning restaurant with a cost grater then $50
create table if not exists expansive_restaurants as
   select  * from restaurants where cost > 500;
select * from expansive_restaurants;
