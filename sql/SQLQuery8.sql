-- Evaluates revenue contribution from each sales channel.
-- Helps compare channel performance and optimize sales strategy.

SELECT
    channel,
    CAST(ROUND(SUM(line_total), 2) AS DECIMAL(18,2)) AS revenue
FROM dbo.sales_analysis
GROUP BY channel
ORDER BY revenue DESC;