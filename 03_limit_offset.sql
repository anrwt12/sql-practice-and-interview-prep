-- =========================================================
-- SQL LIMIT & OFFSET
-- =========================================================

-- LIMIT is used to restrict the number of rows returned.

-- Return the first 10 records
SELECT *
FROM Customers_db
LIMIT 10;


-- Return the top 5 highest-paid customers from Bern
SELECT CustomerName, City, Salary
FROM Customers_db
WHERE City = 'Bern'
ORDER BY Salary DESC
LIMIT 5;


-- =========================================================
-- OFFSET
-- =========================================================

-- OFFSET is used to skip a specific number of rows
-- before returning the result.

-- Skip the first 10 rows and return the next 5 rows
SELECT *
FROM Customers_db
LIMIT 5 OFFSET 10;


-- =========================================================
-- INTERVIEW QUESTION
-- =========================================================

-- Q: Find the 2nd highest salary.

SELECT CustomerName, Address, City, Salary
FROM Customers_db
ORDER BY Salary DESC
LIMIT 1 OFFSET 1;


/*
How it works:

ORDER BY Salary DESC
→ Sorts salaries from highest to lowest.

OFFSET 1
→ Skips the highest salary.

LIMIT 1
→ Returns the next row.

Therefore, the result is the 2nd highest salary.
*/
