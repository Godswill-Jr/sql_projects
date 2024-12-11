SELECT * FROM customer;
SELECT * FROM customer LIMIT 20;
SELECT count(*) AS num_of_col FROM 
INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "customer";
UPDATE your_table
SET your_column = "anything"
WHERE some_condition;
UPDATE customer
SET region = CASE
WHEN custid = 3 THEN "AMERICA"
WHEN custid = 4 THEN "AFRICA"
WHEN custid = 5 THEN "USA"
WHEN custid = 6 THEN "EUROPE"
ELSE region
END
WHERE custid IN (3, 4,5, 6) LIMIT 20;
SELECT fax FROM customer LIMIT 20;