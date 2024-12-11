create database booking_system;
show databases;
use booking_system;
 
 create table sales_table(
 staff_name varchar(50),
 staff_id int primary key,
 age int,
 gender varchar(10)
 );
 select * from sales_table;
 select age, staff_id 
 from sales_table;
 
 insert into booking_table values("james samuel", 1, 30, "Male", "08137249940") ;
 
 select *
 from sales_table;
 
 alter database booking_system read only = 0
;

RENAME TABLE sales_table to booking_table; -- WE RENAMED THE TABLE HERE 

ALTER TABLE booking_table
ADD phone_number INT;

select *
from booking_table;	

alter table booking_table
modify column phone_number varchar(15); -- I CHANGED THE DATA TYPE IN THIS PLACE

alter table booking_table
modify staff_name varchar(50)
after staff_id; -- i changed the position of the column 

insert into booking_table values
(3, "BOLA TINUBU", 94, "MALE", "08053757248");

select *
FROM booking_table
WHERE age < 50
LIMIT 1;

UPDATE booking_table
SET phone_number = "08137248849"
WHERE staff_id = 1;

Select staff_name as Employee_name, upper(staff_name) as Capital_Staff_Name
from booking_table;

use booking_system;

select*
FROM booking_table
where age >80 AND GENDER = "MALE"; -- WE USED AND / OR HERE

SELECT *
FROM booking_table
where gender not like "fem___"; -- we used like operator here

-- ORDER BY

select *
from booking_table;

delete from booking_table
where staff_id = 3; -- DELETING FROM ROWS

SELECT DISTINCT STAFF_NAME
FROM booking_table; -- WE USED THE DISTINCT(USED TO REMOVE DUPLICATES) FROM THE TABLE

INSERT INTO booking_table VALUES(
4, "david chukwuma", 40, "male", "08131342678");

select min(age), avg(age) as average_age, max(age) as highest_age, sum(age) as total_age, count(age) as count_of_age
from booking_table;

select *
from booking_table
where staff_id in (1,3);

select *
from booking_table
where age between 20 and 25;



