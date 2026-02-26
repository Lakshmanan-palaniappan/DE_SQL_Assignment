SELECT product_name,COUNT(*) AS count FROM product
GROUP BY product_name
HAVING COUNT(*)>1
