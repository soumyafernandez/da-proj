SELECT * FROM sales_csv;
-- Total revenue
SELECT SUM(quantity * price) AS total_revenue
FROM sales_csv;
-- Revenue by category
SELECT category,
       SUM(quantity * price) AS revenue
FROM sales_csv
GROUP BY category;
-- Top product by revenue
SELECT product,
       SUM(quantity * price) AS revenue
FROM sales_csv
GROUP BY product
ORDER BY revenue DESC;
