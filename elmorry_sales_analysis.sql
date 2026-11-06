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