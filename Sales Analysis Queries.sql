USE Superstore_Sales_Data

----Total Sales Analysis:
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

 ---Sales Trend Analysis:
--Analyze sales trends over time
SELECT
    YEAR(Order_Date) AS Year,
    SUM(Sales) AS TotalSales
FROM SalesData
GROUP BY Year(Order_Date)
ORDER BY Year;

---Sales by Product:
--Determine which products are generating the most revenue.
SELECT Product_Name, SUM(Sales) AS Revenue
FROM SalesData
GROUP BY Product_Name
ORDER BY Revenue
DESC;

--Analyze the sales performance of different product categories and sub-categories
SELECT Product_Name, SUM(Sales) AS Revenue
FROM SalesData
GROUP BY Product_Name
ORDER BY Revenue
DESC;

---Sales by Ship Mode:
--Compare sales figures based on different shipping modes to assess their impact on sales
SELECT Ship_Mode, SUM(Sales) AS Sales
FROM SalesData
GROUP BY Ship_Mode
ORDER BY Sales
DESC;

---Customer Analysis
--Customer Segmentation:
--Segment customers based on region
SELECT Region, COUNT(DISTINCT Customer_Name) AS NumberOfCustomers
FROM CustomerDetails
GROUP BY Region

--Segment customers based on state
SELECT State, COUNT(DISTINCT Customer_Name) AS NumberOfCustomers
FROM CustomerDetails
GROUP BY State

--Segment customers based on city
SELECT City, COUNT(DISTINCT Customer_Name) AS NumberOfCustomers
FROM CustomerDetails
GROUP BY City

--Identify high-value customer segments and their contribution to total sales.
SELECT Customer_Name, SUM(Sales) AS ContributionToSales
FROM SalesData
GROUP BY Customer_Name
ORDER BY ContributionToSales
DESC;

---Geographic Analysis:
--Analyze sales performance and customer distribution across different regions.
SELECT Segment, Region, SUM(Sales) AS Total_Sales
FROM SalesData
GROUP BY Segment, Region
ORDER BY Total_Sales
DESC;

--Analyze sales performance and customer distribution across different states.
SELECT Segment, State, SUM(Sales) AS Total_Sales
FROM SalesData
GROUP BY Segment, State
ORDER BY Total_Sales
DESC;

--Analyze sales performance and customer distribution across different cities.
SELECT Segment, City, SUM(Sales) AS Total_Sales
FROM SalesData
GROUP BY Segment, City
ORDER BY Total_Sales
DESC;