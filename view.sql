-- RUN foreignKey.sql queries before

DROP VIEW IF EXISTS user_info;
CREATE VIEW user_info AS
SELECT customer_name , phone
FROM customers;

SELECT * FROM user_info;


UPDATE customers
SET phone = "0635524542"
WHERE customer_id = 1;

SELECT * FROM user_info;