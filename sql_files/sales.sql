-- Creating a new Dataset
CREATE DATABASE sales;

-- Creating a table
CREATE TABLE sales (
"SalesId" BIGINT,
"StoreId" BIGINT,
"ProductId" BIGINT,
"Date" DATE,
"UnitPrice" NUMERIC,
"Quantity" BIGINT
);

-- Importing the .csv file
COPY sales
FROM '/Users/patrick/files/data_analytics/csv_files/ss_sql_sales.csv'
DELIMITER ',' CSV HEADER;

-- Testing Import
SELECT * FROM sales LIMIT 10;

-- Testing MIN and MAX for years
SELECT
    MIN("Date"),
    MAX("Date")
FROM sales;

-- Preparing for .csv Export
-- Allowing to work more with months
SELECT
    "ProductId",
    EXTRACT(YEAR FROM "Date") AS Year,
    EXTRACT(MONTH FROM "Date") AS Month,
    ROUND(MAX("UnitPrice"), 2) AS unit_price,
    "Quantity"
FROM sales
GROUP BY
    years, month, "ProductId", "Quantity"
ORDER BY
    years, month, "ProductId", "Quantity";
-- Exported as "ss_sql_sales_export.csv"

-- I had some mistakes
-- This one is the solution
-- my one had the SUM missing
SELECT  
    EXTRACT(YEAR FROM "Date") AS Year,
    EXTRACT(MONTH FROM "Date") AS Month,
    "ProductId",  
    ROUND(MAX("UnitPrice"),2) AS UnitPrice,  
    SUM("Quantity") AS UnitsSold 
FROM  
    sales
GROUP BY  
    Year, Month, "ProductId"
ORDER BY  
    Year, Month, "ProductId";
-- Now a Sucess!