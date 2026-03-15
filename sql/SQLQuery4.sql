-- Analyzes regional sales performance by calculating total revenue,
-- total profit, and profit margin percentage for each delivery region.
-- Helps identify high-performing and low-performing regions.

SELECT
    delivery_region_index,
    CAST(ROUND(SUM(line_total), 2) AS DECIMAL(18,2)) AS revenue,
    CAST(
        ROUND(SUM(line_total - total_unit_cost), 2) AS DECIMAL(18,2)
    ) AS profit,
    CAST(
        ROUND(
            (SUM(line_total - total_unit_cost) * 100.0) / SUM(line_total), 2
        ) AS DECIMAL(5,2)
    ) AS profit_margin_pct
FROM dbo.sales_analysis
GROUP BY delivery_region_index
ORDER BY revenue DESC;