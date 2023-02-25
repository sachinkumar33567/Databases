show databases;
use school;
show tables;
desc faculty;
select * from faculty;

/* Update & delete a row from table */ 
-- update table_name set col_name=val;
-- update table_name set col_name=val where condtions;
-- delete from table_name where conditions;
update faculty set salary=20000;
select * from faculty;
update faculty set course='english' where id=103;
select * from faculty;
delete from faculty where name='sumit';
select * from faculty;

/* Truncate - delete all rows */
-- delete from table_name;
-- or
-- truncate table_name;

select * from faculty;
delete from faculty;
select * from faculty;

select * from student;
truncate student;
select * from student;

/* Delete a table and database */
-- drop table table_name;
-- drop database database name;
drop table faculty;
drop table student;
show tables;
drop database school;
show databases;