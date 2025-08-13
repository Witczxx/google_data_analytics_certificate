-- Created Database
CREATE DATABASE avocado_data;

-- Create Table
-- WARN: "year" is an INTEGER
-- because only year-numbers written
CREATE TABLE avocado_prices (
"Rows" BIGINT,
"Date" DATE,
"AveragePrice" NUMERIC,
"Total_Volume" NUMERIC,
"4046" NUMERIC,
"4225" NUMERIC,
"4770" NUMERIC,
"Total_Bags" NUMERIC,
"Small_Bags" NUMERIC,
"Large_Bags" NUMERIC,
"XLarge_Bags" NUMERIC,
"type" TEXT,
"year" INTEGER,
"region" TEXT
);

-- Delte Table..
DROP TABLE avocado_prices;

-- Import .csv File
COPY avocado_prices
FROM '/Users/patrick/files/data_analytics/csv_files/avocado.csv'
DELIMITER ',' CSV HEADER;

-- Overview
SELECT
    *
FROM
    avocado_prices;

-- Verify the total number of bags
SELECT
    "Total_Bags",
    "Small_Bags" + "Large_Bags" + "XLarge_Bags" AS Control_Total
FROM
    avocado_prices
WHERE
    ROUND("Total_Bags", 1) <> ROUND("Small_Bags" + "Large_Bags" + "XLarge_Bags", 1);
-- CHECK! Small Rounding Mistakes - Let's keep it in mind



-- Percentage of Small Bags of Total Bags
-- Some Total_Bags have the number 0
SELECT
    "Date",
    "region",
    "Small_Bags",
    "Total_Bags",
    CONCAT(ROUND("Small_Bags" / "Total_Bags" * 100, 2), '%') AS "%_of_Small_Bags"
FROM
    avocado_prices
WHERE
    "Total_Bags" <> 0;

-- Showing the Total_Bags, that are 0
SELECT
    "Total_Bags"
FROM
    avocado_prices
WHERE
    "Total_Bags" = 0;
