-- Computes total quantity of items sold across all orders.
-- Provides insight into overall sales volume and demand levels.

SELECT
    SUM(order_quantity) AS total_quantity_sold
FROM dbo.sales_analysis;