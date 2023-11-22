# Walmart-Sales-Analysis
## Table of Contents
- [Introduction](Introduction)
- [Purpose of the Project](Purpose-of-the-Project)
- [Dataset](Dataset)
- [Used Approach](Used-Approach)
  - [Data Wrangling](Data-Wrangling)
  - [Feature Engineering](Feature-Engineering)
  - [Exploratory Data Analysis (EDA)](Exploratory-Data-Analysis-(EDA))
- [Insights from Case Study](Insights-from-Case-Study)
- [Conclusion](Conclusion)

## 1. Introduction
This project is about to explore the 1st quater sales of Walmart in three citites Oceanside, Calexico, Indio of California state,USA to comprehend top-performing branches and items, sales trends for various products, and consumer behavior. The objective of this project is to study how sales strategies can be improved and optimized. The dataset was obtained from the [Kaggle Walmart Sales Forecasting Competition](https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting) 
As the dataset is consists of old data I did few changes like the date and city.

## 2. Purpose of the Project 
The major aim of thie project is to gain insight into the sales data of Walmart to understand the different factors that affect sales of the different branches.

## 3. Dataset
This dataset contains sales transactions from a three different branches of Walmart in Calfornia state, respectively located in Oceanside, Calexico, Indio . The data contains 17 columns and 1001 rows with heading. 
![data type](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/10eb85a4-f607-46d8-bb36-38cbf54e2775)

## 4. Used Approach 
### a. Data Wrangling
This is the first step where **duplicate** values are identified. Also, **null** and **missing** values are detected and data replacement methods are used to replace, **missing** or **null** values.

#### - Build a database
![create table](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/80f0a25e-3e98-44bf-bbce-8dfe7f8aeb90)

#### -Create table and insert the data
  
**Import Data from CSV**

![import data](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/de161c8f-bd35-4305-94c3-3b2e9663bd6e)

After creating a database, it’s time to import data from a CSV file. For this select import and a new window will open Select the path from the local machine.
  
*A snippet of the table view*
  
![table](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/f2bc9ace-4150-4f85-9f5a-f76feffb9274)
  
#### - Check if any duolicate and null values exist.
Remove duplicates values and select columns with null values in them. There are no duplicate and null values in our database as in creating the tables, we set NOT NULL for each field, hence null values are filtered out.

### b. Feature Engineering
This will help use generate some new columns from existing ones.

- Add a new column named **time_of_day** to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made.
![time of day](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/d5d381b0-6b4d-4a52-b917-bdda8dc0e878)

- Add a new column named **day_name** that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week of   the day each branch is busiest.
![day name](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/cce710b4-ace5-4562-aba8-b14eae259a89)

- Add a new column named **month_name** that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales and profit.
![month name](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/4e778a3a-ff14-470b-91b9-72c8e7c656be)

*An updated data set with day_name, month_name and time_of_day*
![Updated Table](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/0b883fa8-88ef-45bb-8ef8-fd27026e2c78)

### c. Exploratory Data Analysis (EDA) 
Exploratory data analysis(EDA) is the method to answer and analyse the business questions of this project.
The answer of the following questions will be used to analyse the Walmart Sales project:

### -Generic Question
-- 1. How many cities are included in the dataset?
-- 2. How many branches are there in each city?

### -Product Analysis
Conduct analysis on the data to understand the different product lines, the products lines performing best and the product lines that need to be improved.
How many unique product lines does the data have?
What is the most common payment method?
What is the most selling product line?
What is the total revenue by month?
What month had the largest COGS?
What product line had the largest revenue?
What is the city with the largest revenue?
What product line had the largest VAT?
Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales
Which branch sold more products than average product sold?
What is the most common product line by gender?
What is the average rating of each product line?

### -Sales Analysis
This analysis aims to answer the question of the sales trends of product. The result of this can help use measure the effectiveness of each sales strategy the business applies and what modificatoins are needed to gain more sales.
Number of sales made in each time of the day per weekday
Which of the customer types brings the most revenue?
Which city has the largest tax percent/ VAT (Value Added Tax)?
Which customer type pays the most in VAT?

### -Customer Analysis
This analysis aims to uncover the different customers segments, purchase trends and the profitability of each customer segment.
How many unique customer types does the data have?
How many unique payment methods does the data have?
What is the most common customer type?
Which customer type buys the most?
What is the gender of most of the customers?
What is the gender distribution per branch?
Which time of the day do customers give most ratings?
Which time of the day do customers give most ratings per branch?
Which day fo the week has the best avg ratings?
Which day of the week has the best average ratings per branch?


