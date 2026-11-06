-- Capstone 1: Sales Territory Analysis
-- Territory: South Carolina (South region)
-- Analyst: Richard Elmorry

USE sample_sales; 

SELECT * FROM Store_Sales LIMIT 10;

SELECT * FROM Store_Locations LIMIT 10;

SELECT * FROM Store_Locations
WHERE State = 'South Carolina';

-- Q1: Total revenue for South Carolina stores, plus start and end dates
SELECT SUM(Sale_Amount), MIN(Transaction_Date), MAX(Transaction_Date)
FROM Store_Sales
WHERE Store_ID IN (852, 853);

--  Q2: Revenue by year and month for South Carolina stores
SELECT YEAR(Transaction_Date), MONTH(Transaction_Date), SUM(Sale_Amount)
FROM Store_Sales
WHERE Store_ID IN (852, 853)
GROUP BY YEAR(Transaction_Date), MONTH(Transaction_Date)
ORDER BY YEAR(Transaction_Date), MONTH(Transaction_Date); 

SELECT * FROM Management;

-- Q3: Revenue by region. South Carolina is 648,812.56 of the South region's total
SELECT Region, SUM(Sale_Amount)
FROM Store_Sales
JOIN Store_Locations
ON Store_Sales.Store_ID = Store_Locations.StoreId
JOIN Management 
ON Store_Locations.State = Management.State
GROUP BY Region;

-- Q4a: Number of transactions per month for South Carolina stores
SELECT YEAR(Transaction_Date), MONTH(Transaction_Date), COUNT(*)
FROM Store_Sales
WHERE Store_ID IN (852, 853)
GROUP BY YEAR(Transaction_Date), MONTH(Transaction_Date)
ORDER BY YEAR(Transaction_Date), MONTH(Transaction_Date);

-- Q4b: Average transaction amount by product category for South Carolina stores
SELECT Category, AVG(Sale_Amount) 
FROM Store_Sales
JOIN Products
ON Store_Sales.Prod_Num = Products.ProdNum
JOIN Inventory_Categories
ON Products.Categoryid = Inventory_Categories.Categoryid
WHERE Store_ID IN (852, 853)
GROUP BY Category;