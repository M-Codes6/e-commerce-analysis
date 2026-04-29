CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE customers (

customer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(60),
last_name VARCHAR(60),
email VARCHAR(100) UNIQUE,
signup_data DATE

);

CREATE TABLE orders (
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
order_data DATE,
total_amount DECIMAL(10, 2),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)

);
