CREATE TABLE sales_data (
	product_id INT,
	sale_date DATE,
	quantity_sold INT
);

INSERT INTO sales_data
VALUES
(1, '2022-01-01', 20),
(2, '2022-01-01', 15),
(1, '2022-01-02', 10),
(2, '2022-01-02', 25),
(1, '2022-01-03', 30),
(2, '2022-01-03', 18),
(1, '2022-01-04', 12),
(2, '2022-01-04', 22)


WITH latest_sale AS(SELECT product_id,
sale_date,
quantity_sold,
RANK() OVER(PARTITION BY product_id ORDER BY sale_date DESC) AS RNK
FROM sales_data)
SELECT * FROM latest_sale WHERE RNK=1


SELECT product_id,
sale_date,
quantity_sold,
LAG(quantity_sold,1,0) OVER(PARTITION BY product_id ORDER BY sale_date) AS previous_qty,
quantity_sold - LAG(quantity_sold,1,0) OVER(PARTITION BY product_id ORDER BY sale_date) AS diff_qty
FROM sales_data


SELECT product_id,
FIRST_VALUE(quantity_sold) OVER(PARTITION BY product_id ORDER BY sale_date) AS fisrt_sold_qty,
LAST_VALUE(quantity_sold) OVER(PARTITION BY product_id ORDER BY sale_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) 
AS last_sold_qty
FROM sales_data

