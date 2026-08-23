-- TechStore — Consultas Básicas SELECT

-- Consulta 1: Exploración general
SELECT *
FROM sales;

-- Consulta 2: Selección de columnas específicas
SELECT
    customer_id,
    product_id,
    total_amount
FROM sales;

-- Consulta 3: Selección con alias
SELECT
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;
