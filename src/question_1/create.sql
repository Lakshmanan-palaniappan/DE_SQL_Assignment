CREATE DATABASE ecommerce;

CREATE TABLE goldmembers(
	userid VARCHAR(50),
	signup_date DATE
);

CREATE TABLE users(
	userid VARCHAR(50),
	signup_date DATE
);


CREATE TABLE sales(
	userid VARCHAR(50),
	created_date DATE,
	product_id INT
);

CREATE TABLE product(
	product_id INT PRIMARY KEY,
	product_name VARCHAR(100),
	price DECIMAL(10,2)
);