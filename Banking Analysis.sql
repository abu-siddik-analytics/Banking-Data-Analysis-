Create table customers(customer_id int PRIMARY KEY,
                       customer_name VARCHAR(100),
					   age INT,
					   gender VARCHAR(50),
					   city VARCHAR(50),
					   account_type VARCHAR(20),
					   balance DECIMAL(12,2));

					   

CREATE TABLE accounts( account_id INT PRIMARY KEY,
                       customer_id INT,
					   branch_id INT,
					   Open_date DATE,
					   status VARCHAR(20),
					   FOREIGN KEY(customer_id)REFERENCES customers(customer_id));



CREATE TABLE transactions(transaction_id INT PRIMARY KEY,
                          account_id INT,
						  transaction_date DATE,
						  amount DECIMAL(10,2),
						  transaction_type VARCHAR(20));



CREATE TABLE loans(loan_id INT PRIMARY KEY,
                   customer_id INT,
				   loan_amount DECIMAL(12,2),
				   loan_type VARCHAR(30),
				   loan_status VARCHAR(20));


CREATE TABLE branches(branch_id INT PRIMARY KEY,
                      branch_name VARCHAR(50),
					  city VARCHAR(50));



INSERT INTO customers(customer_id,customer_name,age,gender,city,account_type,balance)
VALUES
(1,'Rahim',28,'Male','Dhaka','Savings',25000),
(2,'Karim',35,'Male','Chittagong','Current',42000),
(3,'Salma',26,'Female','Khulna','Savings',18000),
(4,'Nabila',30,'Female','Rajshahi','Savings',32000),
(5,'Hasan',40,'Male','Barisal','Current',55000),
(6,'Rafi',22,'Male','Sylhet','Savings',12000),
(7,'Mitu',27,'Female','Dhaka','Savings',27000),
(8,'Sajid',34,'Male','Chittagong','Current',48000),
(9,'Tania',29,'Female','Khulna','Savings',31000),
(10,'Amin',45,'Male','Rajshahi','Current',60000),

(11,'Farhana',33,'Female','Barisal','Savings',35000),
(12,'Imran',25,'Male','Sylhet','Savings',15000),
(13,'Sadia',31,'Female','Dhaka','Savings',40000),
(14,'Shuvo',37,'Male','Chittagong','Current',52000),
(15,'Nusrat',24,'Female','Khulna','Savings',17000),
(16,'Masud',42,'Male','Rajshahi','Current',58000),
(17,'Lamia',28,'Female','Barisal','Savings',26000),
(18,'Arif',36,'Male','Sylhet','Current',47000),
(19,'Rina',34,'Female','Dhaka','Savings',33000),
(20,'Jahid',50,'Male','Chittagong','Current',65000),

(21,'Sumi',23,'Female','Khulna','Savings',14000),
(22,'Kamal',39,'Male','Rajshahi','Current',54000),
(23,'Anika',27,'Female','Barisal','Savings',29000),
(24,'Fahim',32,'Male','Sylhet','Savings',36000),
(25,'Rashida',41,'Female','Dhaka','Current',57000),
(26,'Babul',29,'Male','Chittagong','Savings',28000),
(27,'Pinky',35,'Female','Khulna','Current',45000),
(28,'Tarek',26,'Male','Rajshahi','Savings',19000),
(29,'Mariya',31,'Female','Barisal','Savings',34000),
(30,'Nazmul',44,'Male','Sylhet','Current',61000),

(31,'Liza',24,'Female','Dhaka','Savings',16000),
(32,'Sabbir',38,'Male','Chittagong','Current',50000),
(33,'Mona',29,'Female','Khulna','Savings',30000),
(34,'Rashed',47,'Male','Rajshahi','Current',63000),
(35,'Jannat',25,'Female','Barisal','Savings',21000),
(36,'Asif',34,'Male','Sylhet','Savings',39000),
(37,'Nazia',28,'Female','Dhaka','Savings',27000),
(38,'Kabir',41,'Male','Chittagong','Current',56000),
(39,'Sonia',36,'Female','Khulna','Current',48000),
(40,'Mahmud',52,'Male','Rajshahi','Current',70000);



INSERT INTO accounts(account_id,customer_id,branch_id,open_date,status)
VALUES
(1,1,1,'2023-01-05','Active'),
(2,2,2,'2023-01-10','Active'),
(3,3,3,'2023-01-15','Inactive'),
(4,4,4,'2023-01-20','Active'),
(5,5,5,'2023-02-01','Active'),
(6,6,1,'2023-02-05','Active'),
(7,7,2,'2023-02-10','Inactive'),
(8,8,3,'2023-02-15','Active'),
(9,9,4,'2023-02-20','Active'),
(10,10,5,'2023-03-01','Active'),

(11,11,1,'2023-03-05','Active'),
(12,12,2,'2023-03-10','Active'),
(13,13,3,'2023-03-15','Inactive'),
(14,14,4,'2023-03-20','Active'),
(15,15,5,'2023-04-01','Active'),
(16,16,1,'2023-04-05','Active'),
(17,17,2,'2023-04-10','Inactive'),
(18,18,3,'2023-04-15','Active'),
(19,19,4,'2023-04-20','Active'),
(20,20,5,'2023-05-01','Active'),

(21,21,1,'2023-05-05','Active'),
(22,22,2,'2023-05-10','Active'),
(23,23,3,'2023-05-15','Inactive'),
(24,24,4,'2023-05-20','Active'),
(25,25,5,'2023-06-01','Active'),
(26,26,1,'2023-06-05','Active'),
(27,27,2,'2023-06-10','Inactive'),
(28,28,3,'2023-06-15','Active'),
(29,29,4,'2023-06-20','Active'),
(30,30,5,'2023-07-01','Active'),

(31,31,1,'2023-07-05','Active'),
(32,32,2,'2023-07-10','Active'),
(33,33,3,'2023-07-15','Inactive'),
(34,34,4,'2023-07-20','Active'),
(35,35,5,'2023-08-01','Active'),
(36,36,1,'2023-08-05','Active'),
(37,37,2,'2023-08-10','Inactive'),
(38,38,3,'2023-08-15','Active'),
(39,39,4,'2023-08-20','Active'),
(40,40,5,'2023-09-01','Active');





INSERT INTO transactions(transaction_id,account_id,transaction_date,amount,transaction_type)
VALUES
(1,1,'2025-01-01',5000,'Deposit'),
(2,2,'2025-01-01',2000,'Withdrawal'),
(3,3,'2025-01-02',3000,'Deposit'),
(4,4,'2025-01-02',1500,'Withdrawal'),
(5,5,'2025-01-03',7000,'Deposit'),

(6,6,'2025-01-03',2500,'Withdrawal'),
(7,7,'2025-01-04',4000,'Deposit'),
(8,8,'2025-01-04',1800,'Withdrawal'),
(9,9,'2025-01-05',6000,'Deposit'),
(10,10,'2025-01-05',2200,'Withdrawal'),

(11,11,'2025-01-06',5500,'Deposit'),
(12,12,'2025-01-06',2100,'Withdrawal'),
(13,13,'2025-01-07',3500,'Deposit'),
(14,14,'2025-01-07',1700,'Withdrawal'),
(15,15,'2025-01-08',8000,'Deposit'),

(16,16,'2025-01-08',2600,'Withdrawal'),
(17,17,'2025-01-09',4500,'Deposit'),
(18,18,'2025-01-09',1900,'Withdrawal'),
(19,19,'2025-01-10',6500,'Deposit'),
(20,20,'2025-01-10',2300,'Withdrawal'),

(21,21,'2025-01-11',7200,'Deposit'),
(22,22,'2025-01-11',2400,'Withdrawal'),
(23,23,'2025-01-12',3800,'Deposit'),
(24,24,'2025-01-12',1600,'Withdrawal'),
(25,25,'2025-01-13',9000,'Deposit'),

(26,26,'2025-01-13',2700,'Withdrawal'),
(27,27,'2025-01-14',5000,'Deposit'),
(28,28,'2025-01-14',2000,'Withdrawal'),
(29,29,'2025-01-15',6800,'Deposit'),
(30,30,'2025-01-15',2500,'Withdrawal'),

(31,31,'2025-01-16',7500,'Deposit'),
(32,32,'2025-01-16',2600,'Withdrawal'),
(33,33,'2025-01-17',4200,'Deposit'),
(34,34,'2025-01-17',1800,'Withdrawal'),
(35,35,'2025-01-18',10000,'Deposit'),

(36,36,'2025-01-18',3000,'Withdrawal'),
(37,37,'2025-01-19',5300,'Deposit'),
(38,38,'2025-01-19',2100,'Withdrawal'),
(39,39,'2025-01-20',7700,'Deposit'),
(40,40,'2025-01-20',2800,'Withdrawal');



INSERT INTO loans(loan_id,customer_id,loan_amount,loan_type,loan_status)
VALUES
(1,1,500000,'Home Loan','Approved'),
(2,2,200000,'Personal Loan','Approved'),
(3,3,300000,'Car Loan','Pending'),
(4,4,150000,'Education Loan','Approved'),
(5,5,400000,'Business Loan','Rejected'),

(6,6,600000,'Home Loan','Approved'),
(7,7,250000,'Personal Loan','Pending'),
(8,8,350000,'Car Loan','Approved'),
(9,9,180000,'Education Loan','Approved'),
(10,10,450000,'Business Loan','Rejected'),

(11,11,700000,'Home Loan','Approved'),
(12,12,220000,'Personal Loan','Approved'),
(13,13,330000,'Car Loan','Pending'),
(14,14,160000,'Education Loan','Approved'),
(15,15,500000,'Business Loan','Approved'),

(16,16,800000,'Home Loan','Approved'),
(17,17,260000,'Personal Loan','Pending'),
(18,18,370000,'Car Loan','Approved'),
(19,19,190000,'Education Loan','Rejected'),
(20,20,550000,'Business Loan','Approved'),

(21,21,900000,'Home Loan','Approved'),
(22,22,240000,'Personal Loan','Approved'),
(23,23,390000,'Car Loan','Pending'),
(24,24,170000,'Education Loan','Approved'),
(25,25,600000,'Business Loan','Approved'),

(26,26,1000000,'Home Loan','Approved'),
(27,27,280000,'Personal Loan','Rejected'),
(28,28,410000,'Car Loan','Approved'),
(29,29,200000,'Education Loan','Pending'),
(30,30,650000,'Business Loan','Approved'),

(31,31,1100000,'Home Loan','Approved'),
(32,32,300000,'Personal Loan','Approved'),
(33,33,430000,'Car Loan','Pending'),
(34,34,220000,'Education Loan','Approved'),
(35,35,700000,'Business Loan','Rejected'),

(36,36,1200000,'Home Loan','Approved'),
(37,37,320000,'Personal Loan','Pending'),
(38,38,450000,'Car Loan','Approved'),
(39,39,250000,'Education Loan','Approved'),
(40,40,750000,'Business Loan','Approved');



INSERT INTO branches(branch_id,branch_name,city)
VALUES
(1,'Dhaka Central Branch','Dhaka'),
(2,'Gulshan Branch','Dhaka'),
(3,'Dhanmondi Branch','Dhaka'),
(4,'Uttara Branch','Dhaka'),
(5,'Motijheel Branch','Dhaka'),

(6,'Chittagong Main Branch','Chittagong'),
(7,'Agrabad Branch','Chittagong'),
(8,'Pahartali Branch','Chittagong'),
(9,'Halishahar Branch','Chittagong'),
(10,'Patenga Branch','Chittagong'),

(11,'Sylhet Main Branch','Sylhet'),
(12,'Zindabazar Branch','Sylhet'),
(13,'Amberkhana Branch','Sylhet'),
(14,'Beanibazar Branch','Sylhet'),
(15,'Golapganj Branch','Sylhet'),

(16,'Rajshahi Main Branch','Rajshahi'),
(17,'Boalia Branch','Rajshahi'),
(18,'Shah Makhdum Branch','Rajshahi'),
(19,'Paba Branch','Rajshahi'),
(20,'Godagari Branch','Rajshahi'),

(21,'Khulna Main Branch','Khulna'),
(22,'Sonadanga Branch','Khulna'),
(23,'Boyra Branch','Khulna'),
(24,'Daulatpur Branch','Khulna'),
(25,'Khalishpur Branch','Khulna'),

(26,'Barisal Main Branch','Barisal'),
(27,'Nathullabad Branch','Barisal'),
(28,'Rupatali Branch','Barisal'),
(29,'Babuganj Branch','Barisal'),
(30,'Bakerganj Branch','Barisal'),

(31,'Rangpur Main Branch','Rangpur'),
(32,'Shapla Chattar Branch','Rangpur'),
(33,'Modern Mor Branch','Rangpur'),
(34,'CO Bazar Branch','Rangpur'),
(35,'Satmatha Branch','Rangpur'),

(36,'Mymensingh Main Branch','Mymensingh'),
(37,'Ganginarpar Branch','Mymensingh'),
(38,'Valuka Branch','Mymensingh'),
(39,'Muktagacha Branch','Mymensingh'),
(40,'Trishal Branch','Mymensingh');



SELECT customer_name,age,gender,c.city,account_type,balance,open_date,status,transaction_date,amount,transaction_type,
loan_amount,loan_type,loan_status,branch_name,b.city FROM branches as b
JOIN accounts as a ON b.branch_id=a.branch_id
JOIN customers as c ON a.customer_id=c.customer_id
JOIN loans as l ON c.customer_id=l.customer_id
JOIN transactions as t ON a.account_id=t.account_id;


-- Total_customers & total_balance

SELECT COUNT(*) AS total_customers,Sum(balance)As total_balance FROM customers;


-- TOP 5 high-value Customers

SELECT customer_name,balance  FROM customers
ORDER BY balance DESC LIMIT 5;



--Branch-wise total deposits

SELECT branch_name,Sum(balance)as total_deposite FROM customers as c
JOIN accounts as a ON c.customer_id=a.customer_id
join branches as b ON a.branch_id=b.branch_id
GROUP BY branch_name;


--Customers with loan but low balance

SELECT customer_name,balance,loan_amount FROM customers as c
JOIN loans as l ON c.customer_id=l.customer_id
Where balance<15000;




--- Monthly transaction trend

SELECT To_Char(transaction_date,'month')as month,sum(amount)as total_amount FROM transactions 
group by month
ORDER BY month;



---Active vs Inactive accounts

SELECT status, count(*)as account FROM accounts
 GROUP BY status;



SELECT transaction_date,sum(amount)as total_amount FROM transactions
group by transaction_date;







































































































































































































































































































































































































































































































X