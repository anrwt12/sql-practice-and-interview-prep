-- -- SQL AGGREGATE FUNCTIONS
-- An aggregate function performs a calculation on multiple rows and returns one result.

/*
The 5 most important aggregate functions are:

Function	  Purpose	                Example
COUNT()	  Counts rows/values	         COUNT(*)
SUM()	  Adds numerical values	        SUM(Salary)
AVG()	  Calculates average	         AVG(Salary)
MIN()	  Finds smallest value	         MIN(Salary)
MAX()	  Finds largest value	         MAX(Salary)
*/

-- COUNT()
-- Count all rows
SELECT COUNT(*)  FROM 
   Customers_db ;

-- Count non-NULL values in a specific column
SELECT COUNT(distinct(City)) AS Total_Cities  FROM 
   Customers_db ;
   
   
   -- SUM()
  -- Calculate total salary
    SELECT SUM(Salary) AS Total_Salary 
     FROM 
   Customers_db ;
   
   -- 3. AVG()
   -- Calculate average salary
   SELECT AVG(Salary) AS average_salary
FROM Customers_db;

-- 4. MIN()
-- Find minimum salary
SELECT MIN(Salary) AS minimum_salary
FROM Customers_db;

-- 5. MAX()
-- Find maximum salary
SELECT MAX(Salary) AS maximum_salary
FROM Customers_db;


-- 6. GROUP BY with Aggregate Functions
-- Count customers in each city
SELECT  City ,COUNT(CustomerID) AS Total_Customers
FROM 
Customers_db
GROUP BY City 
ORDER BY Total_Customers desc;


-- Find average salary for each city
SELECT  City ,Round(Avg(Salary),2) AS Avg_Salary
FROM 
Customers_db
GROUP BY City 
ORDER BY Avg_Salary desc;



-- Find total salary for each city
SELECT  City ,sum(Salary) AS Total_Salary
FROM 
Customers_db
GROUP BY City 
ORDER BY Total_Salary desc;

-- Find minimum and maximum salary in each city
SELECT  City ,MAX(Salary) AS Max_Salary, MIN(Salary) AS Min_salary
FROM 
Customers_db
GROUP BY City 
ORDER BY Max_Salary,Min_salary desc;



-- 8. HAVING with Aggregate Functions
-- Find cities having more than 5 customers
SELECT City, COUNT(*) AS Total_Customers FROM 
Customers_db
GROUP BY City 
HAVING COUNT(*) > 5
ORDER BY Total_Customers DESC ;

-- Find cities where average salary is greater than 50000
SELECT City, AVG(Salary) AS Avg_salary  FROM 
Customers_db
GROUP BY City
HAVING AVG(Salary) > 50000;

-- 9. DISTINCT with Aggregate Functions
-- Count unique cities
SELECT COUNT(DISTINCT(CITY)) AS unique_cities  FROM 
Customers_db;
