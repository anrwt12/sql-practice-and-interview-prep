      -- UNION

-- UNION combines the results of two or more SELECT statements
-- into one result and removes duplicate rows.
/*
SYNTAX

SELECT column1, column2
FROM table1

UNION

SELECT column1, column2
FROM table2;



Remember these rules ⭐

Both queries must return the same number of columns.
Corresponding columns should have compatible data types.
UNION removes duplicate rows.
The column names come from the first SELECT.
*/

-- Get customers from Berlin and Bern using UNION.
SELECT CustomerName, City
FROM Customers_db
WHERE City = 'Berlin'

UNION

SELECT CustomerName, City
FROM Customers_db
WHERE City = 'Bern';


SELECT CustomerName, City
FROM Customers_db
WHERE City = 'Berlin'

UNION 

SELECT CustomerName, City
FROM Customers_db
WHERE Salary > 50000;

      -- UNION ALL 
/*
UNION ALL is used to combine the results of two or more SELECT statements into a single result set, including duplicate rows.

Key points:
Combines results from multiple SELECT queries.
Keeps duplicate records.
Each SELECT must have the same number of columns.
Corresponding columns should have compatible data types.



Syntax

SELECT column1, column2
FROM table1

UNION ALL

SELECT column1, column2
FROM table2;


Easy to remember:
 UNION = Combine + Remove duplicates
 UNION ALL = Combine + Keep duplicates
*/

-- Write a query to combine customers from Berlin and Bern.
SELECT CustomerName, City
FROM Customers_db
WHERE City = 'Berlin'

UNION ALL

SELECT CustomerName, City
FROM Customers_db
WHERE City = 'Bern';

-- Write a query to combine customers from Berlin, Bern, and London.
SELECT CustomerName, City
FROM Customers_db
WHERE City = 'Berlin'

UNION ALL

SELECT CustomerName, City
FROM Customers_db
WHERE City = 'Bern'

UNION ALL

SELECT CustomerName, City
FROM Customers_db
WHERE City = 'London';

/*
 INTERVIEW QUESTIONS 

 1.Why would you prefer UNION ALL over UNION when duplicates are acceptable?
Because UNION ALL does not spend extra processing time to remove duplicates, so it is generally more efficient.

2.Which one should you use when you want only unique results?
Use UNION.

3.Is UNION ALL used to join tables?
Not in the same way as JOIN.
JOIN → combines columns from related tables.
UNION ALL → combines rows/results from multiple queries.

4.What happens if the first query has 2 columns and the second has 3 columns?
It will produce an error because both queries must return the same number of columns.

5.What is the difference between UNION and UNION ALL?
UNION → removes duplicate rows.
UNION ALL → keeps duplicate rows.

6. Does UNION ALL remove duplicate rows?
No.
UNION ALL keeps duplicate rows.

7. Which is generally faster: UNION or UNION ALL?
UNION ALL is generally faster because it does not need
to remove duplicate rows.

*/
