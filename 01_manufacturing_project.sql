
USE manufacturing_db;

-- 1. Verify database
SELECT DATABASE();

-- 2. List project tables and views
SHOW FULL TABLES;

-- 3. Final production report
SELECT
    po.order_id,
    p.product_name,
    m.machine_name,
    po.planned_quantity,
    po.produced_quantity,
    po.planned_quantity - po.produced_quantity AS pending_quantity,
    ROUND(
        po.produced_quantity * 100.0 /
        NULLIF(po.planned_quantity, 0),
        2
    ) AS production_efficiency,
    po.order_date,
    po.order_status
FROM Production_Orders po
INNER JOIN Products p
    ON po.product_id = p.product_id
INNER JOIN Machines m
    ON po.machine_id = m.machine_id
ORDER BY po.order_id;

-- 4. Production totals
SELECT
    COUNT(*) AS total_orders,
    SUM(planned_quantity) AS total_planned,
    SUM(produced_quantity) AS total_produced,
    SUM(planned_quantity - produced_quantity) AS total_pending
FROM Production_Orders;

-- 5. Production efficiency by product
SELECT
    p.product_name,
    SUM(po.planned_quantity) AS total_planned,
    SUM(po.produced_quantity) AS total_produced,
    ROUND(
        SUM(po.produced_quantity) * 100.0 /
        NULLIF(SUM(po.planned_quantity), 0),
        2
    ) AS efficiency_percentage
FROM Production_Orders po
INNER JOIN Products p
    ON po.product_id = p.product_id
GROUP BY p.product_name;

-- 6. Material stock report
SELECT
    material_id,
    material_name,
    stock_quantity,
    unit_cost,
    ROUND(stock_quantity * unit_cost, 2) AS total_stock_value
FROM Materials;

-- 7. View stored in the database
SELECT * FROM production_summary;

-- 8. Existing production procedure
CALL Get_Production_Orders();
