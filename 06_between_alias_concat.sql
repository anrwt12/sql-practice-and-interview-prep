-- SQL BETWEEEN OPERATOR

SELECT * FROM
Customers_db
WHERE Salary BETWEEN 10000 AND 20000
ORDER BY Salary DESC;


SELECT * FROM Customers_db
WHERE Salary BETWEEN 10000 AND 28900
AND CustomerID IN (1,2,3);

-- NOT BETWEEN
SELECT * FROM
Customers_db
WHERE CustomerID NOT BETWEEN 1 AND 29;


-- Aliases
-- An SQL Alias is a temporary name given to a column or table to make the query easier to read and understand.
SELECT Salary as Employee_salary
FROM Customers_db;

/*
Salary → original column name
Employee_Salary → alias
AS → creates the alias
*/

-- Alias with Aggregate Functions
SELECT AVG(Salary) AS Avg_Salary
 FROM Customers_db;
 
 SELECT City , COUNT(*) AS Total_Customers
 FROM Customers_db
 GROUP BY City
 ORDER BY Total_Customers desc;
 
 SELECT c.CustomerName , c.City
 FROM Customers_db AS c;
 
 
 -- CONCAT — Concatenate Columns
 -- The CONCAT() function is used to combine two or more text values or columns into a single string.
 
SELECT CustomerName,
CONCAT(Address,' , ',City,' , ',PostalCode,' , ',Country) AS Ful_Address
FROM Customers_db;
