DROP DATABASE IF EXISTS finance;
CREATE DATABASE IF NOT EXISTS finance;

USE finance;

CREATE TABLE IF NOT EXISTS incomes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    source VARCHAR(50) NOT NULL,
    amount INT NOT NULL,
    timestamp TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS expenses(
	id INT PRIMARY KEY AUTO_INCREMENT,
    source VARCHAR(50) NOT NULL,
    amount INT NOT NULL,
    timestamp TIMESTAMP DEFAULT NOW()
);

INSERT INTO incomes(source , amount) VALUES("Salary" , 1000),("Investment" , 750),("Buisness" , 2500),("Bonus" , 600);
INSERT INTO expenses(source , amount) VALUES("Rent" , -400),("Utilities" , -200),("Grocery" , -150),("Investment" , -400);

SELECT * FROM incomes
UNION
SELECT * FROM expenses;

-- INCASE OF Tables doesnt have same number of columns
USE bank;

SELECT customer_id AS id , customer_name FROM customers
UNION
SELECT  account_id AS id, type FROM accounts;