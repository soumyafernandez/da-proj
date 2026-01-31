CREATE DATABASE IF NOT EXISTS d7_sales;
USE d7_sales;
CREATE TABLE IF NOT EXISTS sales (
    order_id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price INT
);
INSERT INTO sales VALUES
(1, 'Laptop', 'Electronics', 2, 50000),
(2, 'Phone', 'Electronics', 4, 20000),
(3, 'Shoes', 'Fashion', 5, 3000),
(4, 'Watch', 'Accessories', 3, 5000),
(5, 'Headphones', 'Electronics', 6, 3000);
SELECT SUM(quantity * price) AS total_revenue
FROM sales;
SELECT category,
       SUM(quantity * price) AS revenue
FROM sales
GROUP BY category;
SELECT category,
       SUM(quantity * price) AS revenue
FROM sales
GROUP BY category
HAVING SUM(quantity * price) > 50000;

SELECT product,
       SUM(quantity) AS total_sold
FROM sales
GROUP BY product
ORDER BY total_sold DESC
LIMIT 1;






