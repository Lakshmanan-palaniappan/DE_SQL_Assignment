SELECT u.userid as not_gold
FROM users u
LEFT JOIN goldmembers gm ON u.userid=gm.userid
WHERE gm.userid IS NULL