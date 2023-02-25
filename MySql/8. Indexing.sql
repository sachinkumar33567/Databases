show databases;
use classicmodels;
show tables;
desc customers;

/* Indexing */
show indexes from customers;
select * from customers limit 10;
select * from customers where customerNumber = 480;
-- How many rows scanned to search it.
explain select * from customers where customerNumber = 480;

select customerNumber, customerName, salesRepEmployeeNumber from customers limit 10;
select * from customers where salesRepEmployeeNumber = 1504;
-- How many rows scanned to search it. 
explain select * from customers where salesRepEmployeeNumber = 1504;

/* Create index */
-- create index ind_name on table_name(col_name);

show indexes from customers;
desc customers;
select * from customers where postalCode = '44000';
explain select * from customers where postalCode = '44000';
-- It's scanning 122 rows

create index postalIndex on customers(postalCode);
show indexes from customers;
desc customers;
select * from customers where postalCode = '44000';
explain select * from customers where postalCode = '44000';
-- It's scanning only 2 rows

show tables;
create table test(
id int primary key,
name varchar(100),
address varchar(100),
index nameIndex(name));

desc test;
show indexes from test;

-- Delete index
-- drop index ind_name on table_name;
drop index nameIndex on test;
desc test;
show indexes from test;