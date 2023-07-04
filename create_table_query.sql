-- DROP database sample_db;
CREATE DATABASE sample_db;
USE sample_db;

CREATE TABLE sales (
  id INT PRIMARY KEY,
  product_name VARCHAR(255),
  category VARCHAR(255),
  sales_date DATE,
  sales_amount DECIMAL(10,2)
);

INSERT INTO sales (id, product_name, category, sales_date, sales_amount)
VALUES 
  (1, 'Product A', 'Category 1', '2022-01-01', 1000.00),
  (2, 'Product B', 'Category 2', '2022-01-02', 2000.00),
  (3, 'Product C', 'Category 1', '2022-01-03', 1500.00),
  (4, 'Product D', 'Category 2', '2022-01-04', 3000.00),
  (5, 'Product A', 'Category 1', '2022-01-05', 500.00),
  (6, 'Product B', 'Category 2', '2022-02-06', 2500.00),
  (7, 'Product C', 'Category 1', '2022-02-07', 1000.00),
  (8, 'Product D', 'Category 2', '2022-01-08', 3500.00),
  (9, 'Product A', 'Category 1', '2022-01-09', 2000.00),
  (10, 'Product B', 'Category 2', '2022-02-10', 1500.00),
  (11, 'Product C', 'Category 1', '2022-01-11', 3000.00),
  (12, 'Product D', 'Category 2', '2022-02-12', 5000.00),
  (13, 'Product A', 'Category 1', '2022-01-13', 2500.00),
  (14, 'Product B', 'Category 2', '2022-01-14', 2000.00),
  (15, 'Product C', 'Category 1', '2022-03-15', 500.00),
  (16, 'Product D', 'Category 2', '2022-03-16', 5000.00),
  (17, 'Product A', 'Category 1', '2022-03-17', 3000.00),
  (18, 'Product B', 'Category 2', '2022-03-18', 1000.00),
  (19, 'Product C', 'Category 1', '2022-03-19', 3500.00),
  (20, 'Product D', 'Category 2', '2022-02-20', 2000.00);

