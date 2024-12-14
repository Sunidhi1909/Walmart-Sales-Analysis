### Created database
Create database walmart_data;
use walmart_data;

### have used this query to see the tuples and attributes
select * from walmart_dataset;

### Overall Sales Analysis
SELECT SUM(total) AS total_revenue
FROM walmart_dataset;

SELECT SUM(quantity) AS total_units_sold
FROM walmart_dataset;

SELECT AVG(total) AS avg_transaction_value
FROM walmart_dataset;

### Sales By Branch

##Total Revenue by Branch
SELECT branch, SUM(total) AS total_revenue
FROM walmart_dataset
GROUP BY branch;

##Top performing branch
SELECT branch, SUM(total) AS total_revenue
FROM walmart_dataset
GROUP BY branch
ORDER BY total_revenue DESC
LIMIT 5;

## Sales by Product Line
#Total Revenue by Product Line:
SELECT `Product line`, SUM(total) AS total_revenue
FROM walmart_dataset
GROUP BY `Product line`;

##Top-Selling Product Lines:
SELECT 'product line', SUM(quantity) AS total_units_sold
FROM walmart_dataset
GROUP BY 'Product_line'
ORDER BY total_units_sold DESC
LIMIT 5;

##Customer Behavior SAnalysis
#Customer Segmentation by Spending

SELECT 'Customer type', AVG(total) AS avg_spending
FROM walmart_dataset
GROUP BY 'Customer type';
##Gender-Based Spending
SELECT gender, SUM(total) AS total_revenue
FROM walmart_dataset
GROUP BY gender;

##Time based - Analysis

#Sales Trends Over Time
SELECT Date_FORMAT(date, '%Y-%m-01') AS month, SUM(total) AS monthly_revenue
FROM walmart_dataset
GROUP BY month
ORDER BY month;

#Peak Sales Periods
SELECT CONCAT(YEAR(date), '-', MONTH(date)) AS month, SUM(total) AS monthly_revenue
FROM walmart_dataset
GROUP BY month
ORDER BY month;