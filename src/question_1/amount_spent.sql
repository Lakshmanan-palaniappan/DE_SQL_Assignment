SELECT s.userid,SUM(p.price) as spent
FROM goldmembers gm
JOIN sales s ON gm.userid=s.userid
JOIN product p ON p.product_id=s.product_id
GROUP BY s.userid