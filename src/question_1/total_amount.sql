SELECT s.userid,SUM(p.price) as total_spent
FROM sales s
LEFT JOIN product p ON p.product_id=s.product_id
GROUP BY s.userid