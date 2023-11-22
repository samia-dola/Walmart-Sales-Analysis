-- --------------------------------------------------------------------------------------
-- ---------------------------------- Data Wrangling ------------------------------------

-- create database
CREATE DATABASE IF NOT EXISTS WalmartSales;

-- Create table
CREATE TABLE IF NOT EXISTS sales(
	invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
    branch VARCHAR(5) NOT NULL,
    city VARCHAR(30) NOT NULL,
    customer_type VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    product_line VARCHAR(100) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    tax_pct FLOAT(6,4) NOT NULL,
    total DECIMAL(12, 4) NOT NULL,
    date DATETIME NOT NULL,
    time TIME NOT NULL,
    payment VARCHAR(15) NOT NULL,
    cogs DECIMAL(10,2) NOT NULL,
    gross_margin_pct FLOAT(11,9),
    gross_income DECIMAL(12, 4),
    rating FLOAT(2, 1)
);

-- data cleaning
SELECT *
FROM sales;


-- --------------------------------------------------------------------------------------
-- --------------------------------- Feature Engineering --------------------------------


-- 1 -- "TIME_OF_DAY" -------------------------------------------------------------------

-- add new column "time_of_day"
ALTER TABLE sales
ADD COLUMN time_of_day VARCHAR (30);

-- update column "time" and then update column "time_of_day" by data of "time" column
SELECT time,
	(CASE
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening" 
	END) 
FROM sales;
-------------------
UPDATE sales
SET time_of_day =
(CASE
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening" 
	END) ;
        
-- 2 -- "DAY_NAME" ---------------------------------------------------------------------

-- add new column "day_name"
ALTER TABLE sales 
ADD COLUMN day_name VARCHAR(10);

-- update column "date" and then update column "day_name" by data of "date" column
SELECT date, dayname(date) 
FROM sales;
-----------------
UPDATE sales
SET day_name = dayname(date);

-- 3 -- "MONTH_NAME" -------------------------------------------------------------------

-- add new column "day_name"
ALTER TABLE sales 
ADD COLUMN month_name VARCHAR(10);

-- update column "date" and then update column "month_name" by data of "date" column
SELECT date, monthname(date) 
FROM sales;
-----------------
UPDATE sales
SET month_name = monthname(date);


-- --------------------------------------------------------------------------------------
-- --------------------------- Business Questions - Generic  ----------------------------


-- 1. How many cities are included in the dataset?
SELECT DISTINCT city
FROM sales
ORDER BY city;

-- 2. How many branches are there in each city?
SELECT DISTINCT city, branch
FROM sales
ORDER BY branch; 


-- --------------------------------------------------------------------------------------
-- --------------------------- Business Questions - Product  ----------------------------


-- 1. How many unique product lines are there in the sales table?
SELECT 
COUNT(DISTINCT product_line)
FROM Sales;

-- 2. Which product line is the most popular?
SELECT product_line, COUNT(product_line) as product_line_count
FROM sales
GROUP BY product_line
ORDER BY product_line_count DESC;

-- 3. Which product line generated the maximum revenue?
SELECT product_line,
ROUND(SUM(total),2) AS maximum_revenue
FROM sales
GROUP BY product_line
ORDER BY maximum_revenue DESC;

-- 4. Which product category had the highest VAT percentage?
SELECT product_line AS product_category,
	  ROUND(AVG(vat),2) AS vat_percentage
FROM sales
GROUP BY product_category
ORDER BY vat_percentage DESC;

-- 5. What is the product quality by product category when average sales are less than 5.5?
SELECT product_line AS product_category, 
	(CASE 
		WHEN AVG(quantity) > 5.5 THEN "Good"
        ELSE "Bad"
        END) as product_quality
FROM sales
GROUP BY product_line;

-- 6. Which branch sold more products than average product sold?
SELECT branch,
	   SUM(quantity) as total_quantity
       FROM sales
GROUP BY branch
HAVING(SUM(quantity) > AVG(quantity));

-- 7. What is the most popular product line based on gender?
SELECT gender,product_line,
	   COUNT(gender) AS total_count
FROM sales
       GROUP BY gender,product_line
	   ORDER BY total_count DESC;
       
-- 8. What is the average rating of each product line?

SELECT product_line,
	   ROUND(AVG(rating),2) AS avg_rating
FROM sales
GROUP BY product_line
ORDER BY avg_rating DESC;


-- --------------------------------------------------------------------------------------
-- --------------------------- Business Questions - Sales  ------------------------------


-- 1. When are the most sales made during the day?
SELECT time_of_day,
	   COUNT(*) AS total_sales
FROM sales
GROUP BY time_of_day
ORDER BY total_sales DESC;

-- 2. Which day of the week has the highest sales?
SELECT day_name,
	   COUNT(*) AS total_sales
FROM sales
GROUP BY day_name
ORDER BY total_sales DESC;

-- 3. What is the total monthly revenue?
SELECT month_name AS month,
ROUND(SUM(total),2) AS total_revenue
FROM sales
GROUP BY month
ORDER BY total_revenue DESC;

-- 4. Which month had the highest sales volume?
SELECT month_name AS month,
ROUND(SUM(total),2) AS total_sales
FROM sales
GROUP BY month
ORDER BY total_sales DESC;

-- 5. Which month had the highest COGS?
SELECT month_name AS month,
SUM(cogs) AS cogs
FROM sales
GROUP BY month
ORDER BY cogs DESC;

-- 6. Which customer types generated the most revenue?
SELECT customer_type,
	   ROUND(SUM(total),2) AS total_revenue
FROM sales
GROUP BY customer_type
ORDER BY total_revenue DESC;    
              
-- 7. Which city has the highest VAT (Value Added Tax)?
SELECT city,
	   ROUND(AVG(VAT),2) AS vat_percentage
FROM sales
GROUP BY city
ORDER BY vat_percentage DESC;  

-- 8. From which city most of the VAT was collected in total?
SELECT city,
	   ROUND(SUM(VAT),2) AS total_vat
FROM sales
GROUP BY city
ORDER BY total_vat DESC; 

-- 9. What is the most popular mode of payment?
SELECT payment_method, COUNT(payment_method) AS payment_method_count
FROM sales
GROUP BY payment_method
ORDER BY payment_method_count DESC;

-- 10. Which city has the highest revenue?
SELECT city, branch, 
ROUND(SUM(total),2) AS revenue
FROM sales
GROUP BY city, branch 
ORDER BY revenue DESC;


-- --------------------------------------------------------------------------------------
-- --------------------------- Business Questions - Customer  ------------------------------


-- 1. How many unique customer types are there in the sales table?
SELECT 
	customer_type,
	COUNT(customer_type)
FROM sales
GROUP BY customer_type;

-- 2. Which consumer type makes the most purchase?
SELECT 
	customer_type,
	ROUND(SUM(total),2) AS sales_amount
FROM sales
GROUP BY customer_type
ORDER BY sales_amount DESC;

-- 3. What is the gender of majority of the customers?
SELECT 
	gender,
	COUNT(gender) AS no_of_gender
FROM sales
GROUP BY gender
ORDER BY no_of_gender DESC;

-- 4. What is the average VAT paid by each customer type?
SELECT customer_type,
	   ROUND(AVG(vat),2) AS avg_vat
FROM sales
GROUP BY customer_type
ORDER BY avg_vat DESC;  

-- 5. Which customer type paid the most VAT?
SELECT customer_type,
	   ROUND(SUM(vat),2) AS vat_paid
FROM sales
GROUP BY customer_type
ORDER BY vat_paid DESC;  

-- 6. What is the gender breakdown by branch?
SELECT 
	branch, gender,
	COUNT(gender) AS no_of_gender
FROM sales
GROUP BY branch, gender
ORDER BY branch;

-- 7. At what time of the day customers provide the most ratings?
SELECT 
	time_of_day,
	ROUND(AVG(rating),2) AS avg_rating
    FROM sales
GROUP BY time_of_day
ORDER BY avg_rating DESC;

-- 8. At what time of the day branches recive the highest reviews from customers?
SELECT 
	branch,time_of_day,
	ROUND(AVG(rating),2) AS reviews
    FROM sales
GROUP BY branch,time_of_day
ORDER BY branch, reviews DESC;

-- 9. Which day of the week has the highest average rating?
SELECT 
	day_name,
	ROUND(AVG(rating),2) AS avg_rating
    FROM sales
GROUP BY day_name
ORDER BY avg_rating DESC;

-- 10. Which day of the week has the highest average branch ratings?
SELECT 
	branch, day_name,
	ROUND(AVG(rating),2) AS avg_rating
    FROM sales
GROUP BY branch, day_name
ORDER BY branch, avg_rating DESC;
