-- RUN foreignKey.sql queries before

SELECT count(*) from transactions;
SELECT count(*) AS "count" from transactions;
SELECT MAX(amount) AS "Highest" from transactions;
SELECT MIN(amount) AS "Lowest" from transactions;
SELECT SUM(amount) AS Total from transactions;
SELECT account_id , type , customer_name , CONCAT(customer_name , "_" ,type , "_" ,account_id) AS username FROM accounts RIGHT JOIN customers ON accounts.customer_id = customers.customer_id;