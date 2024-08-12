# Superstore_Sales_Analysis

# Superstore Sales Data Analysis

## Overview

This repository contains a collection of SQL queries designed to analyze sales data for a Superstore. The queries cover various aspects of sales performance, including total sales, sales by region, state, city, product, and shipping mode, as well as customer segmentation and geographic analysis.

## Table of Contents

- [Total Sales Analysis](#total-sales-analysis)
- [Sales Trend Analysis](#sales-trend-analysis)
- [Sales by Product](#sales-by-product)
- [Sales by Ship Mode](#sales-by-ship-mode)
- [Customer Analysis](#customer-analysis)
- [Geographic Analysis](#geographic-analysis)


**Sales AnaLysis**
----Total Sales Analysis:
---Calculate total sales revenue over a given period.
---Calculate total sales revenue over a given period.
SELECT SUM(Sales) AS Total_Sales
FROM SalesData;

---Compare sales revenue across different regions, states, and cities.
--Sales across different regions
SELECT Region, SUM (Sales) As Sales
FROM SalesData
GROUP BY Region;

--Sales across different states
SELECT State, SUM (Sales) As Sales
FROM SalesData
GROUP BY State;

--Sales across different cities
SELECT City, SUM (Sales) As Sales
FROM SalesData
GROUP BY City;

--Analyze sales performance and customer distribution across different geographic regions.
SELECT Segment, SUM(Sales) AS Total_Sales
FROM SalesData
GROUP BY Segment
ORDER BY Total_Sales
DESC;
