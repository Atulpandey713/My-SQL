use swiggy;
select * from restaurants;

-- 1 rank every restaurant for most expansive to the lest ecpansive
select * ,rank() over(order by cost desc) as 'rank' from restaurants;
-- 2 rank every restaurant for most visited to the lest visited
select * ,rank() over(order by rating_count desc) as 'rank' from restaurants;
-- 3 LIST THE restaurant for  most expansive to lesr expansivr as per city
select *, rank() over(partition by city order by cost desc) as 'rank' from restaurants;
-- 4 dense - rank every restaurants from most expansive to lest expasive as per there city
select *,
   rank() over(order by city desc) as'rank',
   dense_rank() over(order by city desc) as'dense_rank'
from restaurants;

-- 5 rank number every restaurants for most expansive to lest expansive
select *,
   rank() over(order by city desc) as'rank',
   dense_rank() over(order by city desc) as'dense_rank',
   row_number() over(order by city desc) as'row_number'
from restaurants;

-- 6 rank every restaurants from most expansive to lest expasive as per there city along with the city[Adilabab]
select *, concat(city, '-', row_number()over(partition by city order by cost desc)) as 'rank' from restaurants;
-- 7 find top 5 restaurants of each city as par revanue
select * from(select *,
			   cost*rating_count as 'revenue',
               row_number()over(partition by city order by rating_count*cost desc) as 'rank' from restaurants) t
where t.rank < 6;

-- 8 find top 5 restaurants of each cuisine as par revanue
select * from(select *,
			   cost*rating_count as 'revenue',
               row_number()over(partition by cuisine order by rating_count*cost desc) as 'rank' from restaurants) t
where t.rank < 6;