WITH high_pur AS (SELECT u.userid,p.product_name,COUNT(*) AS highest_bought,
DENSE_RANK() OVER(PARTITION BY u.userid ORDER BY COUNT(*) DESC) as RNK
FROM sales s
JOIN users u ON u.userid=s.userid
JOIN product p ON p.product_id=s.product_id
GROUP BY u.userid,p.product_name)
SELECT * FROM high_pur WHERE RNK=1

