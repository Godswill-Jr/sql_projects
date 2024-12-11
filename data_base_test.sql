create database caleb;
show databases;
use caleb;
create table calebs_customers(
customer_name varchar(50),
customer_city varchar(50),
customer_age int(10),
customer_phone varchar(60),
customer_gender varchar(10),
customer_id varchar(50) primary  key
);

insert into calebs_customers values ("caleb", "lagos", 26, "08138380065", "male", "1");
insert into calebs_customers values ("Godswill", "Benue", 25, "08137249940", "male", "2");
insert into calebs_customers values ("Alpha", "Kogi", 36, "08102740792", "male", "3");
insert into calebs_customers values ("Ife", "Ogun", 27, "08130407247", "male", "4");
select * from calebs_customers;


select first_name,
left(first_name,4),
right(first_name,4), birth_date,
substring(birth_date, 6,2) as birth_month
from employee_demographics;

