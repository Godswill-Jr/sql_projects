create database customer_infodb;

use customer_infodb;

create table customers(
CustomerID int primary key,
Customer_Name varchar(50),
Contact_Name varchar(50),
Address varchar(50),
City varchar(25),
Postal_Code int,
Country varchar(15)
);

select * from customers;

alter table customers
modify column postal_code varchar(15);

insert into customers values(
1, "Alfreds Futterkiste", "Maria Anders","Obere Str. 57","Berlin","12209","Germany"),
(2,"Ana Trujillo Emparedados y helados","Ana Trujillo",	"Avda. de la Constitución 2222","México D.F.","05021","Mexico"),
(3,	"Antonio Moreno Taquería",	"Antonio Moreno","Mataderos 2312",	"México D.F.","05023","Mexico"),
(4,"Around the Horn","Thomas Hardy","120 Hanover Sq.","London",	"WA1 1DP","UK"),
(5,	"Berglunds snabbköp","Christina Berglund","Berguvsvägen 8",	"Luleå","S-958 22",	"Sweden");

select *
from customers
LIMIT 4;

alter table customers
add gender varchar(10);

select*
FROM customers;

UPDATE customers
SET gender = "female"
Where customerid = 1;

select postal_code, sum(salary) total_salary,  min(salary) smallest_salary
from customers
group by gender;


select *
from customers
order by salary;

