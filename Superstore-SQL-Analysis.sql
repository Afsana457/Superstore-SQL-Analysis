USE `superstore_sales`;
SELECT Region, ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore_sales.superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

#q2

USE `superstore_sales`;
SELECT 'Product Name', SUM(Sales) AS Revenue
FROM superstore_sales.superstore
GROUP BY 'Product Name'
ORDER BY Revenue DESC
LIMIT 5;

#Q3

USE superstore_sales;
SELECT DATE_FORMAT('Order Date', '%Y-%m') AS Month, SUM(Sales) AS 'Monthly_Sales;'
FROM superstore_sales.superstore
GROUP BY Month
ORDER BY Month;

#q4

USE superstore_sales;
SELECT Segment, ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_sales.superstore
GROUP BY Segment
ORDER BY Total_Profit DESC;

#q5

USE superstore_sales;
SELECT'Product Name', sum(Profit) AS 'Total Profit'
FROM superstore_sales.superstore
GROUP BY '	Product Name'
HAVING 'Total Profit' <=0;

#q6
USE superstore_sales;
SELECT`Sub-Category`, ROUND(AVG(Discount)*100, 2) AS Avg_Discount_Percent
FROM superstore_sales.superstore
GROUP BY `Sub-Category`
ORDER BY Avg_Discount_Percent DESC;