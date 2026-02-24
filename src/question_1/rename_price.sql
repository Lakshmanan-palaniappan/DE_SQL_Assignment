SELECT * FROM product
exec sp_rename 'product.price','price_value','COLUMN'
SELECT * FROM product