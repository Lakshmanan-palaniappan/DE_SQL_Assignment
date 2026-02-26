CREATE TABLE email_signup(
	id INT PRIMARY KEY,
	email_id VARCHAR(100),
	signup_date DATE
);


INSERT INTO email_signup 
VALUES
(1, 'Rajesh@Gmail.com', '2022-02-01'),
 (2, 'Rakesh_gmail@rediffmail.com', '2023-01-22'),
 (3, 'Hitest@Gmail.com', '2020-09-08'),
 (4, 'Salil@Gmmail.com', '2019-07-05'),
 (5, 'Himanshu@Yahoo.com', '2023-05-09'),
 (6, 'Hitesh@Twitter.com', '2015-01-01'),
 (7, 'Rakesh@facebook.com', null);


SELECT 
    id,
    email_id,
    COALESCE(signup_date, '1970-01-01') AS signup_date
FROM email_signup;

SELECT 
    MIN(COALESCE(signup_date, '1970-01-01')) AS first_signup,
    MAX(COALESCE(signup_date, '1970-01-01')) AS latest_signup,
    DATEDIFF(DAY, MIN(COALESCE(signup_date, '1970-01-01')), MAX(COALESCE(signup_date, '1970-01-01'))) AS diff_days
FROM email_signup
WHERE LOWER(email_id) LIKE '%gmail.com';

