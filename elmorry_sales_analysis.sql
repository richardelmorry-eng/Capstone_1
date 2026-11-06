-- Capstone 1: Sales Territory Analysis
-- Territory: South Carolina (South region)
-- Analyst: Richard Elmorry

USE sample_sales; 

-- Territory stores: Charleston (852) and Greenville (853)
SELECT * FROM Store_Locations
WHERE State = 'South Carolina';

-- Q1: Total revenue for South Carolina stores, plus start and end dates
SELECT SUM(Sale_Amount), MIN(Transaction_Date), MAX(Transaction_Date)
FROM Store_Sales
WHERE Store_ID IN (852, 853);

-- Q2: Revenue by year and month for South Carolina stores
SELECT YEAR(Transaction_Date), MONTH(Transaction_Date), SUM(Sale_Amount)
FROM Store_Sales
WHERE Store_ID IN (852, 853)
GROUP BY YEAR(Transaction_Date), MONTH(Transaction_Date)
ORDER BY YEAR(Transaction_Date), MONTH(Transaction_Date); 

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

-- Q5: Ranking of South Carolina stores by total in-store revenue
SELECT StoreLocation, SUM(Sale_Amount)
FROM Store_Sales
JOIN Store_Locations
ON Store_Sales.Store_ID = Store_Locations.StoreId
WHERE Store_ID IN (852, 853)
GROUP BY StoreLocation
ORDER BY SUM(Sale_Amount) DESC;

-- Q6: Recommendation for next quarter
-- I recommend focusing on Technology & Accessories because it made about 73% of South Carolina's revenue (about $472,000 of $648,812).
-- Revenue grew in 2025 (about $248,500 vs. $147,500 in 2024), so demand is rising.
-- Next quarter the team should run promotions on Technology & Accessories at Charleston to close the gap with Greenville.
