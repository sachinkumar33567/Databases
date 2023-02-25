/* load data */
-- write on mysql command line client
-- source C:\\Users\\sachi\\Downloads\\mysqlsampledatabase.sql;
show databases;
use classicmodels;
show tables;

/* limit & distinct*/
-- select * from table_name limit value;
-- select distinct col_name from table_name;

select * from orders limit 10;
select distinct status from orders limit 20;

/* operators */
-- relational >, <, =, <=, >=
-- logical and, or, is null, is not null
select * from orders where status = 'In Process' limit 20;
select * from orders where orderDate >= '2005-05-01' and orderDate < '2005-05-15';
select orderNumber, orderDate from orders where comments is null limit 20;

-- In & not in
show databases;
use classicmodels;
show tables;
desc products;
select productName, productLine, quantityInStock, MSRP from products limit 10;
select productName, productLine, quantityInStock, MSRP from products where productLine in (
'Motorcycles', 'Classic Cars', 'Vintage Cars');
select productName, productLine, quantityInStock, MSRP from products where productLine in (
'Motorcycles', 'Classic Cars', 'Vintage Cars') and quantityInStock < 8000 limit 10;
select productName, productLine, quantityInStock, MSRP from products where productLine in (
'Motorcycles', 'Classic Cars', 'Vintage Cars') and quantityInStock < 8000 order by MSRP;

-- Between & not between
select productName, productLine, quantityInStock, MSRP from products where quantityInStock
between 4000 and 7000;
select productName, productLine, quantityInStock, MSRP from products where productName
between 'a' and 'd' order by productName;
select productName, productLine, quantityInStock, MSRP from products where productName
between 'abc' and 'cap' order by productName;

/* Like and not like
% - [0 - n] characters
_ - one character

statements:
like 's%' - finds any value which starts with 's'
like '%s%' - finds any value which have 's' at any position
like '_ss%' - finds any value which have 'ss' at second and third position
like '%s' - finds any value which ends with 's'
like '_s%p' - 's' at second position and ends with 'p'
like 's_%_%' -
like 's_p' - 

escape characters - name = 'nisha%' it ends with '%' write the statement to find it
'%' - wildcard character
'\%' - normal character
like '%\%' */

show tables;
desc customers;
select customerNumber, customerName from customers;
select customerName from customers where customerName like 'a%';
select customerName from customers where customerName like '%co.';
select customerName from customers where customerName like '%&%';