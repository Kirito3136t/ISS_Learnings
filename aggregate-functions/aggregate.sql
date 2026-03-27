-- generalised sql statement for min

-- min 

-- Use SQL's MIN command in this practice exercise, to find the lowest Microsoft stock (MSFT) ever opened at.
SELECT MIN(open) 
FROM stock_prices
where ticker = 'MSFT';

-- max 

-- Use SQL's MAX command in this practice exercise, to find the highest Netflix stock (NFLX) ever opened at.
SELECT max(open) 
FROM stock_prices
where ticker = 'NFLX';

--avg

-- Write a SQL query using AVG to find the average open price for Google stock (which has a stock ticker symbol of 'GOOG').
SELECT AVG(s.open)
FROM stock_prices as s
where s.ticker = 'GOOG';

-- Query the average population of all cities in CITY where District is California.
Select TRUNCATE(avg(population),0)
FROM CITY
group by DISTRICT
having DISTRICT = 'California';

-- Query the average population for all cities in CITY, rounded down to the nearest integer.
Select ROUND(AVG(population),0)
FROM CITY;

--count
SELECT COUNT(*)
FROM table_name;

--sum

-- Output the total number of drugs manufactured by Pfizer, and output the total sales for all the Pfizer drugs.
SELECT count(*),sum(total_sales)
FROM pharmacy_sales
group by pharmacy_sales.manufacturer
having manufacturer = 'Pfizer';

-- Query the total population of all cities in CITY where District is California.
Select sum(population) 
from CITY
group by District
having District = 'California';

