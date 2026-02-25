WITH first_purchase AS (SELECT u.userid,p.product_name,s.created_date,
ROW_NUMBER() OVER(PARTITION BY u.userid ORDER BY s.created_date) AS RNO
FROM product p
JOIN sales s ON s.product_id=p.product_id
JOIN users u ON u.userid=s.userid
)
SELECT *FROM first_purchase WHERE RNO=1