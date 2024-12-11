create database customerdb;

use customerdb;

create table customers( 
CustomerID int primary key,
Customer_Name varchar(50),
Contact_Name varchar(50),
Address varchar(50),
City varchar(50),
Postal_Code varchar(10),
Country varchar(25)
);

select *
from customers;

insert into customers values(1, "Alfreds Futterkiste",	"Maria Anders",	"Obere Str. 57","Berlin","12209","Germany"),
(2, "Ana Trujillo Emparedados y helados", "Ana Trujillo","Avda. de la Constitución 2222","México D.F.",	"05021","Mexico"),
(3, "Antonio Moreno Taquería","Antonio Moreno",	"Mataderos 2312","México D.F.",	"05023","Mexico"),
(4, "Around the Horn","Thomas Hardy","120 Hanover Sq.",	"London","WA1 1DP","UK"),
(5, "Berglunds snabbköp","Christina Berglund","Berguvsvägen 8",	"Luleå","S-958 22",	"Sweden");



