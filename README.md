# Walmart-Sales-Analysis
## Table of Contents
- [Introduction](Introduction)
- [Purpose of the Project](Purpose-of-the-Project)
- [Dataset](Dataset)
- [Project Analysis](Project-Analysis)
  - [Data Wrangling](Data-Wrangling)
  - [Feature Engineering](Feature-Engineering)
  - [Exploratory Data Analysis (EDA)](Exploratory-Data-Analysis-(EDA))
- [Revenue And Profit Calculations](Revenue-And-Profit-Calculations)
- [Project Insights](Project-Insights)
- [Conclusion](Conclusion)

## 1. Introduction
This project is about to explore the 1st quater sales of Walmart in three citites Oceanside, Calexico, Indio of California state,USA to comprehend top-performing branches and items, sales trends for various products, and consumer behavior. The objective of this project is to study how sales strategies can be improved and optimized. The dataset was obtained from the [Kaggle Walmart Sales Forecasting Competition](https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting) 
As the dataset is consists of old data I did few changes like the date and city.

## 2. Purpose of the Project 
The major aim of thie project is to gain insight into the sales data of Walmart to understand the different factors that affect sales of the different branches.

## 3. [Dataset](https://github.com/samia-dola/Walmart-Sales-Analysis/blob/main/Walmart%20Sales%20Analysis.csv)
This dataset contains sales transactions from a three different branches of Walmart in Calfornia state, respectively located in Oceanside, Calexico, Indio . The data contains 17 columns and 1001 rows with heading. 

![data type](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/10eb85a4-f607-46d8-bb36-38cbf54e2775)

## 4. [Project Analysis](https://github.com/samia-dola/Walmart-Sales-Analysis/blob/main/Walmart%20Sales%20Analysis%20queries.sql)
### a. Data Wrangling

This is the first step where **duplicate** values are identified. Also, **null** and **missing** values are detected and data replacement methods are used to replace, **missing** or **null** values.

- **Build a database**

  ![create table](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/80f0a25e-3e98-44bf-bbce-8dfe7f8aeb90)

- **Create table and insert the data**

  After creating a database, it’s time to import data from a CSV file. For this select import and a new window will open Select the path from the local machine.
  
*A snippet of the table view*
  
  ![table](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/f2bc9ace-4150-4f85-9f5a-f76feffb9274)
  
- **Check duplicate and null values**

  Remove duplicates values and select columns with null values in them. There are no duplicate and null values in our database as in creating the tables, we set NOT NULL for each field, hence null values   are filtered out.

### b. Feature Engineering
  This will help use generate some new columns from existing ones.

- Add a new column named **time_of_day** to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made.
  
  ![time of day](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/d5d381b0-6b4d-4a52-b917-bdda8dc0e878)

- Add a new column named **day_name** that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week     of the day each branch is busiest.
  
  ![day name](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/cce710b4-ace5-4562-aba8-b14eae259a89)

- Add a new column named **month_name** that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales   and profit.
 
  ![month name](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/4e778a3a-ff14-470b-91b9-72c8e7c656be)

  *An updated data set with day_name, month_name and time_of_day*

  ![Updated Table](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/0b883fa8-88ef-45bb-8ef8-fd27026e2c78)

### c. Exploratory Data Analysis (EDA) 
    Exploratory data analysis(EDA) is the method to answer and analyse the business questions of this project.

    The answer of the following questions will be used to analyse the Walmart Sales project:

- ***Generic Question***

1. How many cities are included in the dataset?
2. How many branches are there in each city?

- ***Product Analysis***

  Conduct the product analysis on data to understand the different product lines, best performing product lines and the product lines that need to be improved.
1. How many unique product lines are there in the sales table?
2. Which product line is the most popular?
3. Which product line generated the maximum revenue?
4. Which product category had the highest VAT?
5. What is the product quality by product category when average sales are less than 5.5?
6. Which branch sold more products than average product sold?
7. What is the most popular product line based on gender?
8. What is the average rating of each product line?

- ***Sales Analysis***

  The aim of sales analysis is to answer the question of the sales trends of product. The result will use to measure the effectiveness of each sales strategy the business applies and what modificatoins     need to gain more sales.
1. When are the most sales made during the day?
2. Which day of the week has the highest sales?
3. What is the total monthly revenue?
4. Which month had the highest sales volume?
5. Which month had the highest COGS?
6. Which customer type generated the most revenue? 
7. Which city has the highest VAT (Value Added Tax)?
8. From which city most of the VAT was collected in total?
9. What is the most popular mode of payment?
10. Which city has the highest revenue?

- ***Customer Analysis***

  Analysis about customer uses to uncover the different customers segments, purchase trends and the profitability of each customer segment.
1. How many unique customer types are there in the sales table?
2. Which customer type makes the most purchase?
3. What is the gender of majority of the customers?
4. What is the average VAT paid by each customer type?
5. Which customer type paid the most VAT?
6. What is the gender breakdown by branch?
7. At what time of the day customers provide the most ratings?
8. At what time of the day branches recive the highest reviews from customers?
9. Which day of the week has the highest average rating?
10. Which day of the week has the highest average branch ratings?

## 5. [Revenue And Profit Calculations](https://github.com/samia-dola/Walmart-Sales-Analysis/blob/main/sales%20%26%20revenue%20queries.sql)

![Sales   Revenue calculation](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/74ca54a4-1b0b-4edc-a765-56444bd6ee49)

## 6. Project Insights
In this data analysis project, I embarked on a journey to gain valuable insights from Walmart’s sales data. I satrted the work by preparing and exploring the dataset, cleaning any missing or null values, and engineering new features to help us uncover meaningful patterns.

I addressed a variety of questions, ranging from understanding product performance and sales trends to diving into customer behavior. These insights are crucial for Walmart’s sales strategies and can guide future optimizations.

Throughout the analysis, I made use of SQL queries to extract relevant information from the dataset. I also computed important metrics such as COGS (Cost of Goods Sold), VAT (Value Added Tax), total revenue, and gross profit to better understand the financial aspects of Walmart’s operations.

**Some key insights from the analysis include:**

- Identification of top-performing product lines and branches.
- Analysis of sales trends, which can inform sales strategies and modifications.
- Profiling of customer segments and their profitability.
  
The data-driven decisions made possible through this analysis can contribute to improved sales strategies, inventory management, and overall business performance.

## 7. Conclusion
While this project has provided valuable insights, it’s important to note that data analysis is an ongoing process. As Walmart continues to collect sales data, the potential for further analysis and refinement of strategies remains. This project serves as a foundation for future endeavors in enhancing Walmart’s sales forecasting and optimizing its operations.
