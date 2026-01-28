-- Day 4: SQL Sales Analysis

CREATE DATABASE IF NOT EXISTS day4_sales;
USE day4_sales;

CREATE TABLE IF NOT EXISTS sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price INT
);

INSERT INTO sales (product, category, quantity, price) VALUES
('Laptop', 'Electronics', 2, 50000),
('Phone', 'Electronics', 5, 20000),
('Shoes', 'Fashion', 3, 3000),
('Watch', 'Accessories', 4, 5000);

SELECT * FROM sales;

SELECT SUM(quantity * price) AS total_revenue FROM sales;

SELECT category, SUM(quantity * price) AS revenue
FROM sales
GROUP BY category;
