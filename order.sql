-- RUN foreignKey.sql queries before
SELECT * FROM customers ORDER BY customer_name; -- ASC by default
SELECT * FROM customers ORDER BY customer_name DESC;

SELECT * FROM transactions ORDER BY amount;
SELECT * FROM transactions ORDER BY amount DESC;

SELECT * FROM accounts ORDER BY type , customer_id ;
SELECT * FROM accounts ORDER BY type DESC, customer_id;
SELECT * FROM accounts ORDER BY type , customer_id DESC;
SELECT * FROM accounts ORDER BY type DESC, customer_id DESC;