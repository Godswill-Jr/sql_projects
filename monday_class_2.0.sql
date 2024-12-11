SELECT *
FROM customer
LIMIT 20;

UPDATE customer	
SET fax = "(174)-145-7889"
WHERE custid = 3;

-- case statement
UPDATE customer
SET fax = CASE 
WHEN custid = 11 THEN "111-2455-15"
WHEN custid = 14 THEN "547-27675-32"
WHEN custid = 15 THEN "8789-135-62"
WHEN custid = 20 THEN "6779-1545-70"
END
WHERE Custid in (11,14,15,20);

set sql_safe_updates = 0;

SELECT contactTitle
FROM customer
WHERE contactTitle LIKE "O_ner";
select * from customer;
