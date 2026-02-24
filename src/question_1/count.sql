SELECT 'goldmembers' AS table_name, COUNT(*) as total_records FROM goldmembers
UNION ALL 
SELECT 'users',COUNT(*) FROM users
UNION ALL
SELECT 'sales', COUNT(*) FROM sales
UNION ALL 
SELECT 'product', COUNT(*) FROM product
