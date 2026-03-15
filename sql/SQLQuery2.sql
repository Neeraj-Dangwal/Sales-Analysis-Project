-- Total Revenue & Profit
SELECT
    CAST(ROUND(SUM(line_total), 2) AS DECIMAL(18,2)) AS total_revenue,
    CAST(ROUND(SUM(line_total - total_unit_cost), 2) AS DECIMAL(18,2)) AS total_profit
FROM sales_analysis;