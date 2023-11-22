# Walmart-Sales-Analysis
## Table of Contents
- [Introduction](Introduction)
- [Purpose of the Project](Purpose-of-the-Project)
- [Dataset](Dataset)
- [Used Approach](Used-Approach)
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

- Add a new column named **day_name** that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week     of the day each branch is busiest.
  
![day name](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/cce710b4-ace5-4562-aba8-b14eae259a89)

- Add a new column named **month_name** that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales   and profit.
 
![month name](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/4e778a3a-ff14-470b-91b9-72c8e7c656be)

*An updated data set with day_name, month_name and time_of_day*

![Updated Table](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/0b883fa8-88ef-45bb-8ef8-fd27026e2c78)

### c. Exploratory Data Analysis (EDA) 
Exploratory data analysis(EDA) is the method to answer and analyse the business questions of this project.

The answer of the following questions will be used to analyse the Walmart Sales project:

### -Generic Question
1. How many cities are included in the dataset?
2. How many branches are there in each city?

### -Product Analysis
Conduct the product analysis on data to understand the different product lines, best performing product lines and the product lines that need to be improved.
1. How many unique product lines are there in the sales table?
2. Which product line is the most popular?
3. Which product line generated the maximum revenue?
4. Which product category had the highest VAT percentage?
5. What is the product quality by product category when average sales are less than 5.5?
6. Which branch sold more products than average product sold?
7. What is the most popular product line based on gender?
8. What is the average rating of each product line?

### -Sales Analysis
The aim of sales analysis is to answer the question of the sales trends of product. The result will use to measure the effectiveness of each sales strategy the business applies and what modificatoins need to gain more sales.
1. When are the most sales made during the day?
2. Which day of the week has the highest sales?
3. What is the total monthly revenue?
4. Which month had the highest sales volume?
5. Which month had the highest COGS?
6. Which customer types generated the most revenue?
7. Which city has the highest VAT (Value Added Tax) percentage?
8. Which type of consumer paid the most in VAT?
9. What is the most popular mode of payment?
10. Which city has the highest revenue?

### -Customer Analysis
Analysis about customer uses to uncover the different customers segments, purchase trends and the profitability of each customer segment.
1. How many unique customer types are there in the sales table?
2. Which consumer type makes the most purchases?
3. Which gender are the majority of the customers?
4. What is the gender breakdown by branch?
5. At what time of day do consumers provide the most ratings?
6. At what time of day do consumers offer the highest reviews per branch?
7. Which day of the week has the highest average rating?
8. Which day of the week has the highest average branch ratings?
