CREATE DATABASE day6_company;
USE day6_company;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT
);
INSERT INTO customers VALUES
(1, 'Amit', 'Delhi'),
(2, 'Neha', 'Mumbai'),
(3, 'Rahul', 'Bangalore');
INSERT INTO orders VALUES
(101, 1, 'Laptop', 50000),
(102, 1, 'Mouse', 1500),
(103, 2, 'Phone', 20000);
SELECT * FROM customers;
SELECT * FROM orders;
SELECT customers.customer_name,
       orders.product,
       orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;
SELECT customers.customer_name,
       SUM(orders.amount) AS total_spent
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name;



