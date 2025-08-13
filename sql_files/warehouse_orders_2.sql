-- Overview 1
SELECT * FROM warehouses;
-- Overview 2
SELECT * FROM orders;

-- My Solution
SELECT
    warehouses.warehouse_id,
    warehouses.warehouse_alias,
    warehouses.state,
    COUNT(DISTINCT orders.order_id) AS num_orders,
    (   SELECT
            COUNT(*)
        FROM
            orders
    )   AS total_orders, 
    CASE
        WHEN CAST(COUNT(DISTINCT orders.order_id) AS FLOAT) / (SELECT COUNT(*) FROM orders) <= 0.20
        THEN 'fulfilled 0-20% of Orders'
        WHEN CAST(COUNT(DISTINCT orders.order_id) AS FLOAT) / (SELECT COUNT(*) FROM orders) > 0.20
        AND CAST(COUNT(DISTINCT orders.order_id) AS FLOAT) / (SELECT COUNT(*) FROM orders) <= 0.60
        THEN 'fulfilled 21-60% of Orders'
        ELSE 'fulfilled over 60% of Orders'
    END AS fulfillment_summary
FROM 
    warehouses
JOIN
    orders
    ON warehouses.warehouse_id = orders.warehouse_id
GROUP BY
    warehouses.warehouse_id, 
    warehouses.warehouse_alias, 
    warehouses.state;

