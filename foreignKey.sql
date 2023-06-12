DROP DATABASE IF EXISTS bank;

CREATE DATABASE bank;

USE bank;

CREATE TABLE customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    phone VARCHAR(12) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE accounts(
	account_id INT PRIMARY KEY AUTO_INCREMENT,
    type ENUM("CHECKING", "SAVING") DEFAULT "CHECKING",
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    type ENUM("CREDIT", "DEBIT") NOT NULL,
    amount INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    account_id INT,
    FOREIGN KEY(account_id) REFERENCES accounts(account_id),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

ALTER TABLE transactions
DROP FOREIGN KEY transactions_ibfk_2;

INSERT INTO CUSTOMERS(customer_name, phone) VALUES("Andrew" , "91364916");
INSERT INTO CUSTOMERS(customer_name, phone) VALUES("James" , "893612451");
INSERT INTO CUSTOMERS(customer_name, phone) VALUES("Mark" , "910861345");
INSERT INTO CUSTOMERS(customer_name, phone) VALUES("Alec" , "9378415123");

SELECT * FROM customers;

INSERT INTO accounts(customer_id , type) VALUES(1 , "CHECKING");
INSERT INTO accounts(customer_id , type) VALUES(1 , "SAVING");
INSERT INTO accounts(customer_id , type) VALUES(2 , "CHECKING");
INSERT INTO accounts(customer_id , type) VALUES(3 , "CHECKING");
INSERT INTO accounts(customer_id , type) VALUES(3 , "SAVING");
INSERT INTO accounts(customer_id , type) VALUES(4 , "SAVING");

SELECT * FROM accounts;


INSERT INTO transactions(account_id , type , amount) VALUES(1 , "CREDIT" , 100);
INSERT INTO transactions(account_id , type , amount) VALUES(2 , "CREDIT" , 80);
INSERT INTO transactions(account_id , type , amount) VALUES(3 , "CREDIT" , 72);
INSERT INTO transactions(account_id , type , amount) VALUES(4 , "CREDIT" , 100);
INSERT INTO transactions(account_id , type , amount) VALUES(5 , "CREDIT" , 100);
INSERT INTO transactions(account_id , type , amount) VALUES(6 , "CREDIT" , 96);
INSERT INTO transactions(account_id , type , amount) VALUES(3 , "CREDIT" , 85);
INSERT INTO transactions(account_id , type , amount) VALUES(2 , "CREDIT" , 22);
INSERT INTO transactions(account_id , type , amount) VALUES(5 , "DEBIT" , 60);
INSERT INTO transactions(account_id , type , amount) VALUES(1 , "DEBIT" , 35);
INSERT INTO transactions(account_id , type , amount) VALUES(2 , "CREDIT" , 80);
INSERT INTO transactions(account_id , type , amount) VALUES(3 , "CREDIT" , 72);
INSERT INTO transactions(account_id , type , amount) VALUES(4 , "CREDIT" , 100);
INSERT INTO transactions(account_id , type , amount) VALUES(5 , "CREDIT" , 100);
INSERT INTO transactions(account_id , type , amount) VALUES(6 , "DEBIT" , 42);
INSERT INTO transactions(account_id , type , amount) VALUES(3 , "CREDIT" , 85);
INSERT INTO transactions(account_id , type , amount) VALUES(2 , "CREDIT" , 22);
INSERT INTO transactions(account_id , type , amount) VALUES(5 , "DEBIT" , 21);

SELECT * FROM transactions;
