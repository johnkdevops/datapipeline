CREATE TABLE IF NOT EXISTS sales_summary (
    name VARCHAR(50),
    total_sales INT
);
INSERT INTO sales_summary
SELECT name, SUM(sales) as total_sales
FROM sales_data
GROUP BY name;
SELECT * FROM sales_summary;