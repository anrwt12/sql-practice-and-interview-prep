
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Product VARCHAR(100),
    Amount DECIMAL(10,2)
);

INSERT INTO Orders
(OrderID, CustomerID, OrderDate, Product, Amount)
VALUES
(101, 1, '2026-01-10', 'Laptop', 55000),
(102, 2, '2026-01-12', 'Mouse', 800),
(103, 1, '2026-01-15', 'Keyboard', 1500),
(104, 4, '2026-01-20', 'Monitor', 12000),
(105, 5, '2026-01-25', 'Headphones', 2500);

-- joins
-- A JOIN is used to combine data from two or more tables using a related column between them.

-- INNER JOIN
-- Returns only matching rows from both tables.

-- LEFT JOIN
-- Returns all rows from the left table and matching rows from the right table.

-- RIGHT JOIN
-- Returns all rows from the right table and matching rows from the left table.

-- FULL OUTER JOIN
-- Returns all rows from both tables. Where there is no match, NULL is returned for the missing side.

            --  INNER JOIN
-- syntax

-- SELECT columns
-- FROM table1
-- INNER JOIN table2
-- ON table1.common_column = table2.common_column


SELECT c.CustomerID , c.CustomerName,c.City,
o.OrderID,o.Product,o.Amount
FROM Customers_db AS c
INNER JOIN Orders AS o 
ON c.CustomerID = o.CustomerID;

-- Find customers who have placed orders:


-- Find the total amount ordered by each customer:


--  Find customers from a specific city who placed orders



-- Find orders greater than ₹10,000



