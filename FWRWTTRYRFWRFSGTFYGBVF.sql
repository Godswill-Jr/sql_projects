CREATE DATABASE evening_classdb;

USE evening_classdb;

CREATE TABLE data_analytics(
first_name varchar(50),
last_name varchar(50),
studentID INT PRIMARY KEY,
birth_date date,
Salary INT); 

SELECT *
FROM data_analytics;

SELECT *
FROM data_analytics;


Insert into data_analytics values(
"Amadu", "Bello", 003, "2004-11-05", 25000);

INSERT INTO data_analytics values(
"Faith", "Amaka", 001, "1968-10-20", 50000),
("Chibuzor", "Aliyu", 002, "2004-11-05", 20000);
 

SELECT *
FROM data_analytics
order by 3 desc;

SELECT *
FROM data_analytics
WHERE last_name LIKE 'a%'; -- startwith

SELECT *
FROM data_analytics
WHERE last_name LIKE '%a'; -- endswith

