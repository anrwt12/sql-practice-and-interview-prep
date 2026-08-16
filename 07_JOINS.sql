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
SELECT c.CustomerName,o.OrderID
FROM Customers_db AS c
INNER JOIN Orders AS o 
ON c.CustomerID = o.CustomerID;


-- Find the total amount ordered by each customer:
SELECT c.CustomerID,c.CustomerName,SUM(o.Amount) as Total_amount
FROM Customers_db AS c
JOIN Orders AS o
ON c.CustomerID=o.CustomerID
GROUP BY 
 c.CustomerID,c.CustomerName
;

--  Find customers from a specific city who placed orders
SELECT c.CustomerID,c.CustomerName,C.City, o.Product
FROM Customers_db AS c
JOIN Orders AS o
ON c.CustomerID=o.CustomerID
WHERE c.City = 'Bern';

-- Find orders greater than ₹10,000
SELECT c.CustomerID,c.CustomerName,o.Amount
FROM Customers_db AS c
JOIN Orders AS o
ON c.CustomerID=o.CustomerID
WHERE o.Amount > 10000 ;




            -- LEFT JOIN
-- syntax

-- SELECT columns
-- FROM table1
-- LEFT JOIN table2
-- ON table1.common_column = table2.common_column


-- Q1 Find all customers and their orders, including customers who have not placed any order.
SELECT c.CustomerID,c.CustomerName,o.Product 
FROM Customers_db AS c
LEFT JOIN Orders AS o
ON c.CustomerID=o.CustomerID;

/*
Customers_db AS c → left table
Orders AS o → right table
LEFT JOIN → keeps every customer
ON c.CustomerID = o.CustomerID → matches their orders
o.Product → shows the product ordered
If a customer has no order, o.Product will be NULL.
*/


-- Q2. Find all customers along with their OrderID and Amount, including customers who have not placed any orders.
SELECT c.CustomerID,o.OrderID , o.Amount , c.CustomerName,o.Product 
FROM Customers_db AS c
LEFT JOIN Orders AS o
ON c.CustomerID=o.CustomerID;


-- Q3. Find customers who have not placed any orders.
SELECT c.CustomerID,o.Product 
FROM Customers_db AS c
LEFT JOIN Orders AS o
ON c.CustomerID=o.CustomerID
WHERE o.Product IS NULL ;


-- Q4. Find all customers from Bern, including those who have not placed any orders.
SELECT c.CustomerID,c.CustomerName,c.City,o.Product 
FROM Customers_db AS c
LEFT JOIN Orders AS o
ON c.CustomerID=o.CustomerID
WHERE  c.City = 'Bern' ;



-- Q5. Find the total amount ordered by each customer, including customers who have not placed any orders.
SELECT c.CustomerID,c.CustomerName,
c.City,SUM(o.Amount) AS Total_Amount
FROM Customers_db AS c
LEFT JOIN Orders AS o
ON c.CustomerID=o.CustomerID
GROUP BY 
c.CustomerName,c.City,
c.CustomerID;


           -- RIGHT JOIN
-- syntax

-- SELECT columns
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.common_column = table2.common_column





