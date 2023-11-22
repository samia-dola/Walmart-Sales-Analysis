
-- Calculate Total Gross Sales

SELECT 
	ROUND(sum(total),2) as total_gross_sales
FROM sales;
-- Other method ------
SELECT 
	ROUND(sum(vat+cogs),2) as total_gross_sales
FROM sales;

-- Calculate Total Gross Profit

SELECT 
	ROUND(SUM(gross_income),2) AS total_gross_profit
FROM sales;
-- Other method ------
SELECT 
	ROUND(SUM(total-cogs),2) AS total_gross_profit
FROM sales;
