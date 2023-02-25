show databases;
use school;
show tables;
desc student;
/* add columns */ 
-- alter table table_name add(col_name1 dtype1 cons1, col_name2 dtype2 cons2, ...);
alter table student add(marks float default 0);
desc student;

/* modify a column */
-- chage data type
-- alter table table_name modify col_name dtype;
alter table student modify marks int;
desc student;

-- rename a column
-- alter table table_name change old_col_name new_col_name dtype;
alter table student change roll roll_no int;
desc student;

-- delete a column
-- alter table table_name drop column c1, drop column c2, ....;
alter table student drop column marks, drop column class;
select * from student;