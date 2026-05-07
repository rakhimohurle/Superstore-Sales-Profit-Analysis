CREATE DATABASE Superstore;
USE Superstore;

CREATE TABLE superstore (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code VARCHAR(20),
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Sales FLOAT,
    Quantity INT,
    Discount FLOAT,
    Profit FLOAT
);

SELECT * FROM superstore LIMIT 10;

-- Sales by Category
SELECT Category, SUM(Sales) FROM superstore GROUP BY Category;

-- Profit by Sub_Category
SELECT Sub_Category, SUM(Profit) AS total_Profit
FROM superstore
GROUP BY Sub_Category
ORDER BY Total_Profit DESC;

-- Loss Making Items
SELECT Sub_Category, SUM(Profit) as Lowest_Profit
FROM superstore
GROUP BY Sub_Category
ORDER BY Lowest_Profit ASC;

-- Region Performance
SELECT Region, SUM(Sales), SUM(Profit)
FROM superstore
GROUP BY Region;

SELECT * FROM superstore LIMIT 10;

