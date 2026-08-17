-- GROUP BY & HAVING

-- GROUP BY is used to group rows that have the same values
-- into summary rows.
-- It is commonly used with aggregate functions such as
-- COUNT(), SUM(), AVG(), MIN(), and MAX().


-- syntax
-- SELECT column_name, aggregate_function(column_name)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name
-- ORDER BY column_name;

-- Count customers in each city
SELECT City , count(CustomerID) AS Total_Customers
FROM Customers_db
GROUP BY City
ORDER BY Total_Customers desc;

-- Count customers in each country
SELECT Country, count(CustomerID) AS Total_Customers
FROM Customers_db
GROUP BY Country
ORDER BY Total_Customers desc;

-- Average salary in each city
SELECT City , ROUND(AVG(Salary),2) AS AVG_salary
FROM Customers_db
GROUP BY City
ORDER By AVG_salary desc;

-- Total salary in each city
SELECT City, SUM(Salary) AS Total_Salary
FROM Customers_db
GROUP BY City;

-- Highest salary in each city
SELECT City, MAX(Salary) AS Highest_Salary
FROM Customers_db
GROUP BY City;


-- Lowest salary in each city
SELECT City, MIN(Salary) AS Lowest_Salary
FROM Customers_db
GROUP BY City;


-- HAVING
-- HAVING is used to filter grouped results
-- after GROUP BY and aggregate calculations.

/*
Syntax

SELECT column_name, aggregate_function(column_name)
FROM table_name
WHERE condition
GROUP BY column_name
HAVING condition
ORDER BY column_name;

*/

-- Cities having more than 5 customers
SELECT City, COUNT(CustomerID) AS Total_Customers
FROM Customers_db
GROUP BY City
HAVING COUNT(CustomerID) >5
ORDER BY Total_Customers DESC ;


-- Cities where average salary is greater than 50000
SELECT City, AVG(Salary) AS Avg_Salary
FROM Customers_db
GROUP BY City
HAVING AVG(Salary) > 50000;

-- Countries where total salary is greater than 500000
SELECT Country, SUM(Salary) AS Total_Salary
FROM Customers_db
GROUP BY Country
HAVING SUM(Salary) > 500000;


/*
WHERE  → filters rows
GROUP BY → creates groups
HAVING → filters groups
ORDER BY → sorts the final result


Interview Questions & Answers
Q1. What is GROUP BY?
Answer:
GROUP BY groups rows having the same values and is commonly used with aggregate functions to perform calculations for each group.

Q2. Why do we use GROUP BY?
Answer:
We use GROUP BY to perform aggregate calculations separately for each category or group.

Example:

SELECT City, COUNT(*)
FROM Customers_db
GROUP BY City;

Q3. What is HAVING?
Answer:
HAVING filters the results of a grouped query based on aggregate conditions.

Q4. Difference between WHERE and HAVING?
Answer:

WHERE  → filters rows before grouping
HAVING → filters groups after grouping

Q5. Can we use aggregate functions with GROUP BY?
Answer:
Yes. Common aggregate functions are:

COUNT()
SUM()
AVG()
MIN()
MAX()

Q6. Can we use HAVING without GROUP BY?
Answer:
Yes, MySQL allows HAVING in an aggregate query without GROUP BY.

Example:

SELECT COUNT(*) AS Total_Customers
FROM Customers_db
HAVING COUNT(*) > 100;

Q7. Can we use ORDER BY with GROUP BY?
Answer:
Yes.

SELECT City, COUNT(*) AS Total_Customers
FROM Customers_db
GROUP BY City
ORDER BY Total_Customers DESC;


Q8. Can we use WHERE and HAVING together?
Answer:
Yes.

SELECT City, AVG(Salary) AS Avg_Salary
FROM Customers_db
WHERE Salary > 20000
GROUP BY City
HAVING AVG(Salary) > 50000;


Execution logic:


FROM
 ↓
WHERE
 ↓
GROUP BY
 ↓
HAVING
 ↓
SELECT
 ↓
ORDER BY

*/
