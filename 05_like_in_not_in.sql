-- LIKE
-- LIKE is used to filter text values based on a pattern.
-- % represents zero, one, or multiple characters

-- Names starting with 'A'
SELECT * FROM
Customers_db
WHERE CustomerName LIKE 'A%';

-- Names ending with 'a'
SELECT * FROM
Customers_db
WHERE CustomerName LIKE '%a';

-- Names containing 'an'
SELECT * FROM
Customers_db
WHERE CustomerName LIKE '%an%';


-- Names starting with A OR B
SELECT * FROM
Customers_db
WHERE CustomerName LIKE 'A%'
OR CustomerName LIKE 'B%' ;


-- _ is a wildcard in SQL that represents exactly one character
SELECT * 
FROM Customers_db
WHERE CustomerName LIKE '_a%';


/*
_ → exactly one character
a → second character must be a
% → any number of characters after that
*/

-- IN Operator
-- The IN operator is used in the WHERE clause to check if a column matches any value from a list.

SELECT*
FROM Customers_db
WHERE City IN ('Bern','Berlin','London');

-- Equivalent to:
SELECT *
FROM Customers_db
WHERE City = 'Berlin'
   OR City = 'Bern'
   OR City = 'London';
   
   
   -- Find customers with salary 50000, 60000, or 70000
   SELECT CustomerName, Salary
FROM Customers_db
WHERE Salary IN (50000, 60000, 70000);
   
   
 -- NOT IN
 
 -- Find customers NOT from Berlin or Bern.
 SELECT *
FROM Customers_db
WHERE City NOT IN ('Berlin', 'Bern');
   
-- Find customers from Berlin or Bern with salary above 60000.
 SELECT CustomerName, City, Salary
FROM Customers_db
WHERE City IN ('Berlin', 'Bern')
AND Salary >60000
;


