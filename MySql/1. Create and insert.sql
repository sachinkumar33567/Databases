show databases;

/* create data bases */
-- create database database_name
create database school;
show databases;
use school;
show tables;

/* create tables */
-- create table table_name(col1 dtype1 cons1, col2 dtype2 cons2, col3 dtype3 cons3);
create table student(roll int, name varchar(100), age int, class int);
desc student;

create table faculty(
id int primary key,
name varchar(100) not null,
course varchar(100),
salary int default 1000);
desc faculty;

/* insert data in a table */ 
-- insert into table_name values(val1, val2, val3)
desc student;
insert into student values(1, 'ankit', 18, 12);
select * from student;
insert into student values(2, 'aman', 14, 8);
insert into student values(3, 'vipin', 15, 9);
select * from student;
desc faculty;
select * from faculty;
insert into faculty(id, name, course) values(102, 'sukhla', 'physics');
select * from faculty;
insert into faculty(id, name) values(103, 'sumit');
select * from faculty;
insert into faculty values(104, 'ankit', 'math', 50000);
select * from faculty;