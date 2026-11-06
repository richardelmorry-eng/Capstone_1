# Capstone 1: EmporiUm South Carolina Sales Analysis

## Project Overview

This project analyzes sales data for EmporiUm, a student bookstore chain that sells books, technology, art supplies, and other products. My assigned sales territory is **South Carolina**, part of the **South region** (Regional Director Andy Gisselquist, Sales Manager Len Jensen).

South Carolina is an in-store territory with two stores, **Charleston** and **Greenville**, so this analysis covers **in-store sales only**. Online orders shipped to South Carolina are not included. The data covers January 1, 2022 through December 30, 2025.

## Tools Used

- **MySQL Workbench:** writing and running the SQL queries
- **Excel (web):** building a PivotTable and PivotChart from the exported query results
- **Git and GitHub:** version control, with commits as I worked

## Sales Analysis Findings

### 1. Total Revenue

South Carolina's two stores generated **$648,812.56** in revenue between **January 1, 2022 and December 30, 2025**.

### 2. Revenue by Year and Month

| Year | Revenue |
|------|---------|
| 2022 | $106,495.31 |
| 2023 | $146,262.76 |
| 2024 | $147,526.47 |
| 2025 | $248,528.02 |

2025 was the strongest year, about 68.5% higher than 2024. August 2025 was the biggest single month at $34,374.68.

### 3. South Carolina Compared With the South Region

The South region (Florida, South Carolina, and Texas) generated **$7,996,850.12** in in-store revenue. South Carolina contributed about **8.1%** of that total.

### 4. Transactions and Average Sale by Category

South Carolina had 4,472 transactions in total, with monthly counts growing from 48 to 68 in 2022 to as high as 209 in October 2025. Average transaction amount by category:

| Category | Average Sale |
|----------|--------------|
| Technology & Accessories | $483.23 |
| Textbooks | $175.58 |
| Apparel and Merchandise | $33.53 |
| Art Supplies | $32.17 |
| Books (General) | $28.43 |
| Stationery and Supplies | $10.08 |

### 5. Store Rankings

| Rank | Store | Revenue |
|------|-------|---------|
| 1 | Greenville | $337,002.00 |
| 2 | Charleston | $311,810.56 |

## Business Recommendation

Technology & Accessories made up about 73% of South Carolina's revenue (about $472,000 of $648,812). I recommend that the team run promotions on Technology & Accessories at Charleston, the lower-ranked store, to close the gap with Greenville. The full reasoning is in the comments at the end of the SQL script.

## Excel Visualization

I exported the monthly revenue query to CSV, opened it in Excel, and built a PivotTable and a PivotChart that shows monthly revenue for each year from 2022 through 2025.

## Project Files

- `elmorry_sales_analysis.sql`: SQL queries for all six questions, plus the recommendation
- `elmorry_territory_data.csv`: monthly revenue results exported from MySQL
- `elmorry_territory_chart.xlsx`: Excel PivotTable and PivotChart
- `README.md`: project overview, findings, and video link

## Recorded Video Presentation

VIDEO LINK GOES HERE

[Watch my recorded capstone presentation on Google Drive](https://drive.google.com/file/d/1q21jAlk3-xMPVTpFMzVFJg1t_fTkIqaD/view?usp=sharing) 