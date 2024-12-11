-- just created a database
create database schooldb;
-- just created a database
use schooldb; -- explaining my query
-- next is showing databases for our standard output
-- use schooldb;

use schooldb; 

drop database schooldb;

create database schooldb;

create table data_analytics(
staff_id int primary key,
first_name  varchar(50),
last_name varchar(50),
gender varchar(10),
phone_no varchar(11),
address varchar(50),
hire_date date
);
select first_name, last_name from data_analytics;
select * from data_analytics;
insert into data_analytics values(1, "jerry", "tom",  "male", "08103158886", "no  12 khemsafe road", "2019-08-11");
insert into data_analytics values(2, "jerry", "tom",  "male", "08103158886", "no  12 khemsafe road", "2025-11-09");
insert into data_analytics values(3, "joseph", "jerry",  "female", "07016247095", "kigo road", "2011-12-01");
insert into data_analytics values(4, "jerome", "david",  "male", "07035966554", "liman road", "2024-01-01");


select *
from data_analytics
limit 2;

select * 
from data_analytics 
where hire_date <= "2025-10-09";

-- LOGICAL OPERATORS (AND, OR, BETWEEN, LIKE)


select *
from data_analytics;

select *
from data_analytics
where gender = "female" or first_name = "Jerry"; -- WE USED THE OR OPERATOR HERE

select *
from data_analytics
where phone_no like "%07016";

select *
from data_analytics
where phone_no like "%07016";

select *
from data_analytics
where phone_no not like "%07016%"; -- LIKE OPERATOR 

-- BETWEEN
SELECT *
FROM data_analytics
WHERE hire_date not between "2019-01-01" AND "2024-01-01";

select	upper("godswill");

select * , upper(first_name)  "Names"
from data_analytics;





