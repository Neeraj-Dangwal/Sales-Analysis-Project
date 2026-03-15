-- Calculates total number of unique orders, total revenue,
-- and Average Order Value (AOV) to evaluate overall sales efficiency.
-- AOV helps understand customer purchasing behavior and revenue per transaction.

WITH base_sales AS (
    SELECT
        line_total,
        total_unit_cost,
        (line_total - total_unit_cost) AS profit
    FROM dbo.sales_analysis
)
SELECT
    CAST(ROUND(SUM(line_total), 2) AS DECIMAL(18,2)) AS total_revenue,
    CAST(ROUND(SUM(profit), 2) AS DECIMAL(18,2))     AS total_profit,
    CAST(
        ROUND(
            (SUM(profit) * 100.0) / SUM(line_total), 2
        ) AS DECIMAL(5,2)
    ) AS profit_margin_pct
FROM base_sales;