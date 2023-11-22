# Walmart-Sales-Analysis
## Table of Contents
- [Introduction](Introduction)
- [Purpose of the Project](Purpose-of-the-Project)
- [Dataset](Dataset)
- [Entity Relationship Diagram](Entity-Relationship-Diagram)
- [SQL Tool](SQL-Tool)
- [Applied SQL Functions](Applied-SQL-Functions)
- [Case Study Analysis](Case-Study-Analysis)
  - [Database and Tables Creation](Database-and-Tables-Creation)
  - [Case Study Questions](Case-Study-Questions)
  - [Bonus Queries from Danny](Bonus-Queries-from-Danny)
- [Insights from Case Study](Insights-from-Case-Study)
- [Conclusion](Conclusion)

## 1. Introduction
This project is about to explore the 1st quater sales of Walmart in three citites Oceanside, Calexico, Indio of California state,USA to comprehend top-performing branches and items, sales trends for various products, and consumer behavior. The objective of this project is to study how sales strategies can be improved and optimized. The dataset was obtained from the [Kaggle Walmart Sales Forecasting Competition](https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting) 
As the dataset is consists of old data I did few changes like the date and city.

## 2. Purpose of the Project 
The major aim of thie project is to gain insight into the sales data of Walmart to understand the different factors that affect sales of the different branches.

## 3. Dataset
This dataset contains sales transactions from a three different branches of Walmart in Calfornia state, respectively located in Oceanside, Calexico, Indio . The data contains 17 columns and 1001 rows with heading. 

![Table Content](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/6f9d562f-acdf-4d6c-b0e8-8e639b8fa9b7)

## 4. Approach Used
### a. Data Wrangling
This is the first step where **duplicate** values are identified. Also, **null** and **missing** values are detected and data replacement methods are used to replace, **missing** or **null** values.

#### - Build a database
  ![database](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/135d2a0a-106f-4f3f-9a84-d4cc00fb9bd6)

#### -Create table and insert the data
  ![create table](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/2f26e8ad-c93a-46a5-9720-99ebcb374c80)
  **Import Data from CSV**
  ![import data](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/c14ca755-36ad-4a4f-8b5c-f9d532937dd3)
  After creating a database, it’s time to import data from a CSV file. For this select import and a new window will open Select the path from the local machine.
  *A snippet of the table view*
  ![table](https://github.com/samia-dola/Walmart-Sales-Analysis/assets/150064729/ffdb40e6-0037-404c-b9e0-c51022131978)
  
#### - Check if any duolicate and null values exist.
Remove duplicates values and select columns with null values in them. There are no duplicate and null values in our database as in creating the tables, we set NOT NULL for each field, hence null values are filtered out.

### b. Feature Engineering
This will help use generate some new columns from existing ones.
Add a new column named time_of_day to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made.
Add a new column named day_name that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week of the day each branch is busiest.
Add a new column named month_name that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales and profit.

### c. Exploratory Data Analysis (EDA) 
Exploratory data analysis is done to answer the listed questions and aims of this project.

