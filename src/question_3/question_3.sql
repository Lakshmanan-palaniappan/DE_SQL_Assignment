CREATE TABLE dept_table(
	id_deptname VARCHAR(30),
	emp_name VARCHAR(30),
	salary DECIMAL(10,2)
);

INSERT INTO dept_table 
VALUES
('1111-MATH', 'RAHUL', 10000),
 ('1111-MATH', 'RAKESH', 20000),
 ('2222-SCIENCE', 'AKASH', 10000),
 ('222-SCIENCE', 'ANDREW', 10000),
 ('22-CHEM', 'ANKIT', 25000),
 ('3333-CHEM', 'SONIKA', 12000),
 ('4444-BIO', 'HITESH', 2300),
 ('44-BIO', 'AKSHAY', 10000)


SELECT SUBSTRING(id_deptname,CHARINDEX('-',id_deptname)+1,LEN(id_deptname)) AS Dept,SUM(salary) AS Salary
FROM dept_table
GROUP BY SUBSTRING(id_deptname,CHARINDEX('-',id_deptname)+1,LEN(id_deptname))