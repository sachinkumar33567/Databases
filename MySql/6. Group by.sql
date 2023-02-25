show databases;
use classicmodels;
show tables;

-- Count total rows
select count(*) from customers;
select * from customers limit 5;
select customerName, state, country from customers limit 5;
select customerName from customers where country='USA';
select count(*) from customers where country='USA';

-- Count total customer for each country
select count(*) from customers group by country;
select country, count(*) from customers group by country;
select state, count(*) from customers group by state;
select country, count(*) from customers where state is not null group by country;

desc customers;
-- Calculate the sum of creditLimit for each country
select country, sum(creditLimit) from customers group by country;
select country, sum(creditLimit) from customers where creditLimit > 50000 group by country;

-- Calculate no of customers for each state for every country
select country, state, count(*) from customers group by country, state;

select distinct state from customers where country='USA';
select count(*) from customers where country='USA';


/* Having and order by */
select state, count(*) as count from customers where state is not null group by state;
select state, count(*) as count from customers where count(*) > 5 group by state; -- error
select state, count(*) from customers where state is not null group by state having count(*) > 5;
select country, sum(creditLimit) as sum from customers group by country;
select country, sum(creditLimit) from customers group by country having sum(creditLimit) > 50000;

select country, sum(creditLimit) from customers group by country having sum(creditLimit) > 50000
order by sum(creditLimit);
select country, sum(creditLimit) from customers group by country having sum(creditLimit) > 50000
order by sum(creditLimit) desc;


