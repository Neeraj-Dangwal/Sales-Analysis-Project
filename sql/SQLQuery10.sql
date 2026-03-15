-- Counts unique customers to measure customer base size.
-- Useful for understanding market reach and customer engagement.

SELECT
    COUNT(DISTINCT customer_names) AS total_customers
FROM dbo.sales_analysis;