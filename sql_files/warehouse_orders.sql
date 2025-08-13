-- CREATE Dataset
CREATE DATABASE warehouse_orders;

-- Create 1st Table
CREATE TABLE warehouses (
    warehouse_id INTEGER,
    warehouse_alias TEXT,
    maximum_capacity INTEGER,
    employee_total INTEGER,
    state TEXT);

-- Create 2nd Table
CREATE TABLE orders (
    order_id INTEGER,
    customer_id INTEGER,
    warehouse_id INTEGER,
    order_date DATE,
    shipper_date DATE);

-- Import Data into 1st Table
COPY warehouses
FROM '/Users/patrick/files/data_analytics/csv_files/warehouse_orders_warehouse.csv'
DELIMITER ',' CSV HEADER;

-- Import Data into 2nd Table
COPY orders
FROM '/Users/patrick/files/data_analytics/csv_files/warehouse_orders_orders.csv'
DELIMITER ',' CSV HEADER;

-- Check Table 1
SELECT * FROM warehouses;
-- Check Table 2
SELECT * FROM orders;

-- Joining both tables into one query
SELECT 
    *
FROM 
    warehouses
JOIN
    orders
    ON warehouses.warehouse_id = orders.warehouse_id;

-- Finding number of states with warehouses that have shipped orders
-- PROBLEM - number of states is over 9999
-- But we want to now the DISTINCT number of states!
SELECT
    COUNT(warehouses.state) AS num_states
FROM 
    warehouses
INNER JOIN
    orders
    ON warehouses.warehouse_id = orders.warehouse_id;


-- 2.0 Finding number of states with warehouses that have shipped orders
-- With this Query it's working perfectly - returns the number 3
SELECT
    COUNT(DISTINCT warehouses.state) AS num_states
FROM 
    warehouses
INNER JOIN
    orders
    ON warehouses.warehouse_id = orders.warehouse_id;

-- Want to find the number of orders shipped from warehouses in each state
SELECT 
    warehouses.state,
    COUNT(orders.order_id) AS num_orders
FROM
    warehouses
INNER JOIN
    orders
    ON warehouses.warehouse_id = orders.order_id
GROUP BY
    warehouses.state;

