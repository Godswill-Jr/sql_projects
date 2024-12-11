SELECT * FROM table_name; 
SELECT * FROM table_name LIMIT number_of_limit;
SELECT COUNT(*) AS 	total_num_of_rows FROM region; -- NUMBER OF ROWS
SELECT COUNT(*) AS number_of_cols FROM INFORMATION_SCHEMA.COLUMNS;
SELECT COUNT(*) AS number_of_cols FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'customer';
SELECT * FROM customer;
UPDATE customer
SET fax = "value"
WHERE custID = 3;
-- 
SELECT * FROM CUSTOMER LIMIT 5;
UPDATE customer 
SET region = CASE
WHEN custID = 1  THEN "EUROPE"
WHEN CustID =2 THEN "America"
WHEN CustID =3 THEN "Africa"
WHEN CustID =2 THEN "North America"
WHEN CustID =2 THEN "USA"
END 
WHERE CustId in (1, 2, 3, 4, 5))
