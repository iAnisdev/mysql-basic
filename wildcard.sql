-- RUN foreignKey.sql queries before

-- Wild card characters % _
-- used to substitue characters in string 

-- % can be used for startsWith or endsWith
SELECT * FROM customers WHERE customer_name LIKE "a%";
SELECT * FROM customers WHERE customer_name LIKE "%w";

-- _ can be used for contains or matching length
SELECT * FROM customers WHERE customer_name LIKE "_ar_";
SELECT * FROM customers WHERE customer_name LIKE "____";

-- Both can be used together too
SELECT * FROM customers WHERE customer_name LIKE "_a%";