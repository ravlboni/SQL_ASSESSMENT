drop database worker;

create database worker;

use worker;

create table worker
      ( 
        worker_id int not null auto_increment,
        first_name varchar(100),
        last_name varchar(100),                          
        salary int,
        joining_date varchar(100),
        department varchar(100),
        primary key (worker_id)
       );
 
insert into worker (first_name,last_name,salary,joining_date,department)

values('monika','arora',100000,'2-20-2014','hr'),
	  ('niharika','varma',80000,'6-11-2014','admin'),
      ('vishal','singhal',300000,'2-20-2014','hr'),
      ('amitabh','singh',500000,'2-20-2014','admin'),
      ('vivek','bhati',500000,'6-11-2014','admin'),
      ('vipul','diwan',200000,'6-11-2014','account'),
      ('satish','kumar',75000,'1-20-2014','account'),
      ('geetika','chauhan',90000,'4-11-2014','admin');


desc worker;

select * from worker;

-- (1) 
select * from worker order by first_name asc,department desc;

-- (2)
select * from worker where first_name in ('vipul','satish');

-- (3)

select * from worker where first_name like '_____h';

-- (4)
select * from worker where salary > 100000;

-- (5)
select worker_id,count(worker_id) from worker group by worker_id having count(worker_id) > 1 ;

-- (6)
select * from worker limit 6;

-- (7)
select department, count(worker_id) as 'name of worker' from worker group by department having count(worker_id)<5;

-- (8)
select department, count(department) as 'name of worker' from worker group by department;

-- (9)
select first_name , salary from worker where salary = (select max(salary) from worker);

-- QUESTION (2) OPEN SCHOOL DATABASE,THEN SELECT STUDENT TABLE AND USE FOLLOWING SQL STATEMENTS. 
-- TYPE THE STATEMENT , PRESS ENTER AND NOTE THE OUTPUT


 drop database school_db;
 create database school_db;
 
 create table school
 (
 stdid int not null auto_increment,
 stdname varchar(30),
 sex varchar(30),
 percentage int(2),
 class int(2),
 sec varchar(30),
 streams varchar(30),
 dob varchar(30),
 primary key (stdid)
 );

insert into school(stdname,sex,percentage,class,sec,streams,dob)
value('surekha joshi', 'female',82,12,'A','science','3/8/1998'),
('mahi agrawal', 'female',56,12,'A','commerce','11/23/2008'),
('sanam verma', 'male',59,12,'A','commerce','6/29/2006'),
('ronit kumar', 'male',63,12,'A','commerce','11/5/1997'),
('dipesh pulkit', 'male',78,12,'A','science','14/9/2003'),
('jahanvi puri', 'female',60,12,'A','commerce','11/7/2008'),
('sanam kumar', 'male',23,12,'A','commerce','14/09/2003'),
('sahil saras', 'male',56,12,'A','commerce','11/7/2008'),
('akshara agrawal', 'female',72,12,'A','commerce','10/1/1996'),
('stuti mishra', 'female',39,39,'A','science','11/23/2008'),
('harsh agarwa', 'male',42,12,'A','science','3/8/1998'),
('nikunj agarwal', 'male',49,12,'A','commerce','28/6/1998'),
('akriti saxena', 'female',89,12,'A','science','11/23/2008'),
('tani rastogi', 'female',82,12,'A','science','11/23/2008');


 -- 1 To display all the records form STUDENT table. 
 SELECT * FROM school; 

-- 2. To display any name and date of birth from the table STUDENT. 
SELECT StdName, DOB FROM school ;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM school WHERE percentage >= 80;


-- 4. To display all records of science students whose percentage is more than 75 form student table.
SELECT * from school WHERE streams = "science" AND percentage > 75;

-- 5. To display student name, stream and percentage where percentage of student is more than 80
select StdName, Streams,Percentage from school where percentage>80;


