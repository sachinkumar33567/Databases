show databases;
-- Count
-- select count(*) from table_name;
-- select count(col_name) from table_name where conditions;
-- select count(distinct col_name) from table_name;
use classicmodels;
show tables;
-- No: of rows
select count(*) from orders;

-- With respect to another column
select * from orders limit 10;
select count(status) from orders where comments is not null;

-- Unique values
select count(distinct status) from orders;

show tables;
select * from payments limit 10;
-- Average
select avg(amount) from payments;
select avg(amount) from payments where amount < 10000;

-- Max
select max(amount) from payments;

-- Min
select min(amount) from payments;