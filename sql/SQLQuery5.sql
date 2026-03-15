-- Aggregates sales data at a monthly level to analyze revenue trends over time.
-- Useful for identifying seasonality, growth patterns, and business cycles.

SELECT
    FORMAT(orderdate, 'yyyy-MM') AS month,
    CAST(ROUND(SUM(line_total), 2) AS DECIMAL(18,2)) AS monthly_revenue
FROM dbo.sales_analysis
GROUP BY FORMAT(orderdate, 'yyyy-MM')
ORDER BY month;