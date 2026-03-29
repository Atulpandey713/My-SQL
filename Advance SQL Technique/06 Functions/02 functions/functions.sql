use swiggy;
select * from messy_indian_dataset;

-- function to calculate age
drop function if exists CalculateAge;
delimiter //
create function CalculateAge(birthdate DATE) returns int
deterministic
begin
   declare age int;
   set age = year(curdate()) - year(birthdate);
   return age;
end; //
delimiter ;
select CalculateAge('2005-04-07') as age;

-- function to calculate tex
drop function if exists CalculateTex;
delimiter //
create function CalculateTax(amount decimal(10,2), tax_rate decimal(5,2)) returns decimal(10,2)
deterministic
begin
   declare tax decimal(10,2);
   set tax = amount * (tax_rate / 100 );
   return tax;
end; //
delimiter ;
select CalculateTax(1000.15,18) as tax_amount;
