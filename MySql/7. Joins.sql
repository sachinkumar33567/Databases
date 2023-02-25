show databases;
create database school;
use school;
show tables;
create table classDetails(classId int, classTeacherId int);
select * from classDetails;
insert into classDetails values(1, 10004);
insert into classDetails values(2, 10005);
insert into classDetails values(3, 10001);
insert into classDetails values(4, 10002);
insert into classDetails values(5, 10005);
select * from classDetails;

create table teacherDetails(teacherId int, name varchar(100), subjectId varchar(100));
select * from teacherDetails;
insert into teacherDetails values(10001, 'komal', 'E403');
insert into teacherDetails values(10002, 'shikha', 'M702');
insert into teacherDetails values(10005, 'sachin', 'S809');
insert into teacherDetails values(10009, 'aman', 'M702');
select * from teacherDetails;

create table subjectDetails(id varchar(100), name varchar(100), totalStudents int);
select * from subjectDetails;
insert into subjectDetails values('E403', 'English', 34);
insert into subjectDetails values('H009', 'Hindi', 12);
insert into subjectDetails values('X067', 'Sanskrit', 24);
insert into subjectDetails values('M702', 'Maths', 45);
select * from subjectDetails;

/* Inner join */
-- select table1.col, table2.col, ... from table1_name join table2_name
-- on table1.col = table2.col where conditions;

-- select table1.col, table2.col, .. from table1_name join table2_name
-- on table1.col = table2.col join table3 on table2.col=table3.col

-- Print the class teachers name with respect to their classes
select classId, name from classDetails join teacherDetails
on classTeacherId = teacherId;

-- Print classes and teacher and their subjects
select classId, teacherDetails.name, subjectDetails.name from
classDetails join teacherDetails on classTeacherId = teacherId join subjectDetails on
subjectId=id;

/* Left and right joins */
show tables;
create table t1(id int, name varchar(100));
insert into t1 values(1, 'A');
insert into t1 values(2, 'B');
insert into t1 values(3, 'C');

create table t2(id varchar(100), name varchar(100));
insert into t2 values('A', 'abc');
insert into t2 values('D', 'xyz');
insert into t2 values('A', 'def');
insert into t2 values('C', 'pqr');

select * from t1 left join t2 on t1.name = t2.id;
select * from t1 right join t2 on t1.name = t2.id;