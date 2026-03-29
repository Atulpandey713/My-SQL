select * from users.users_2021;
select * from users.users_2022;
select * from users.users_2023;

-- UNION || remove the duplicate
select * from users.users_2021 union select * from users.users_2022;
select * from users.users_2021 union select * from users.users_2023;
select * from users.users_2022 union select * from users.users_2023;
select * from users.users_2021 union select * from users.users_2022 union select * from users.users_2023;

-- union all  | don't remove the duplicate 
select * from users.users_2021 union all select * from users.users_2022;
select * from users.users_2021 union all select * from users.users_2023;
select * from users.users_2022 union all select * from users.users_2023;
select * from users.users_2021 union all select * from users.users_2022 union all select * from users.users_2023;
select * from users.users_2021 union all select * from users.users_2022 union  select * from users.users_2023;
(select * from users.users_2021 union all select * from users.users_2022 ) union select * from users.users_2023;

-- excrpt | show all the of duplication table is not there in the set
select * from users.users_2021 except  select * from users.users_2022;
select * from users.users_2022 except  select * from users.users_2021;
select * from users.users_2021 except  select * from users.users_2023;
select * from users.users_2023 except  select * from users.users_2021;
select * from users.users_2021 except select * from users.users_2022 except select * from users.users_2023;
select * from users.users_2023 except select * from users.users_2022 except  select * from users.users_2021;

-- intersection 
select * from users.users_2021 intersect  select * from users.users_2022;
select * from users.users_2022 intersect  select * from users.users_2023;
select * from users.users_2021 intersect select * from users.users_2023;

select * from users.users_2021 intersect  select * from users.users_2022 intersect  select * from users.users_2023; 