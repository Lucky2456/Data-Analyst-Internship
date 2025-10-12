
use practice;


-- SELECT SUM(total_price) AS Total_Revenue from [pizza_sales (1)];




-- SELECT SUM(total_price)  /COUNT(DISTINCT order_id) AS Average_order_Value FROM [pizza_sales (1)];

-- SELECT SUM(quantity) AS Total_Pizza_Sold FROM [pizza_sales (1)];

-- SELECT COUNT(DISTINCT order_id) FROM [pizza_sales (1)];

/*SELECT CAST(CAST(SUM(quantity) AS DECIMAL (10,2))/CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) 
AS Avg_Pizzas_Per_Order
FROM [pizza_sales (1)];*/


-- Daily Trend for Total Orders
-- SELECT DATENAME(DW,order_date) as order_day,COUNT(DISTINCT order_id) AS total_orders
-- FROM [pizza_sales (1)]


-- Total Order by Month
/*SELECT DATENAME(MONTH,order_date) AS Month_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM [pizza_sales (1)]
GROUP BY DATENAME(MONTH,order_date);*/

--SELECT * FROM [pizza_sales (1)];

-- Percentage of total sales by pizza category
/*SELECT pizza_category,SUM(total_price) *100/(SELECT SUM(total_price) FROM [pizza_sales (1)]) as pct
FROM [pizza_sales (1)]
GROUP BY pizza_category;*/

-- PERCENTAGE OF SALES BY SIZE
/*SELECT pizza_size,SUM(total_price) *100/(SELECT SUM(total_price) FROM [pizza_sales (1)]) as pct
FROM [pizza_sales (1)]
GROUP BY pizza_size
ORDER BY pct;*/




-- Top 5 pizzas by revenue
-- SELECT TOP 5pizza_name,SUM(total_price) AS total_revenue FROM [pizza_sales (1)]
-- GROUP BY pizza_name
-- ORDER BY total_revenue DESC ;


-- Bottom 5 pizzas by revenue
-- SELECT TOP 5pizza_name,SUM(total_price) AS total_revenue FROM [pizza_sales (1)]
-- GROUP BY pizza_name
-- ORDER BY total_revenue ;

-- Top 5 pizzas by quantity
--SELECT TOP 5pizza_name,SUM(quantity) AS total_quantity FROM [pizza_sales (1)]
--GROUP BY pizza_name
--ORDER BY total_quantity DESC ;

-- Botttom 5 pizzas by Quantity
-- SELECT TOP 5pizza_name,SUM(quantity) AS total_quantity FROM [pizza_sales (1)]
-- GROUP BY pizza_name
-- ORDER BY total_quantity ;


-- Top 5 pizzas by Orders
--SELECT TOP 5pizza_name,Count(DISTINCT order_id) AS total_orders FROM [pizza_sales (1)]
-- GROUP BY pizza_name
-- ORDER BY total_orders DESC ;


-- BOTTOM 5 pizzas by Orders
/*SELECT TOP 5pizza_name,Count(DISTINCT order_id) AS total_orders FROM [pizza_sales (1)]
GROUP BY pizza_name
ORDER BY total_orders  ;*/

