-- Problem Statement for data analytics: 
-- You have been hired as a data analyst at an online retail store 
-- that sells various products across different categories. 
-- Your task is to analyze the sales data 
-- and generate insights that can help improve the store's performance. 

-- ----------------------------------------------------------------------

-- What is the total sales amount for each category?
SELECT category, SUM(sales_amount) as total_sales_amount
FROM sales
GROUP BY category
ORDER BY total_sales_amount DESC;


-- What is the average sales amount for each product?
SELECT product_name, AVG(sales_amount) as avg_sales_amount
FROM sales
GROUP BY product_name
ORDER BY avg_sales_amount DESC;


-- What is the total sales amount for each month?
SELECT MONTH(sales_date) as sales_month, 
		SUM(sales_amount) as total_sales_amount
FROM sales
GROUP BY sales_month
ORDER BY sales_month ASC;


-- What is the total number of sales and 
-- total sales amount for each month and category?
SELECT MONTH(sales_date) as sales_month, category, 
		COUNT(*) as total_sales_count, 
        SUM(sales_amount) as total_sales_amount
FROM sales
GROUP BY sales_month, category
ORDER BY sales_month ASC, total_sales_amount DESC;


-- What is the top selling product for each month?
SELECT sales_month, product_name, 
		MAX(total_sales_amount) as max_sales_amount
FROM (
  SELECT MONTH(sales_date) as sales_month, 
  product_name, SUM(sales_amount) as total_sales_amount
  FROM sales
  GROUP BY sales_month, product_name
) AS monthly_sales
GROUP BY sales_month, product_name
ORDER BY sales_month ASC, max_sales_amount DESC;


-- What is the total sales amount for each product 
-- in Category 1, Category 2 combined?
SELECT product_name, SUM(sales_amount) as total_sales_amount
FROM sales
WHERE category = 'Category 1' OR category = 'Category 2'
GROUP BY product_name;

