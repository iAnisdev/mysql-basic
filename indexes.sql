-- RUN foreignKey.sql queries before

SHOW INDEXES FROM customers;
SHOW INDEXES FROM accounts;
SHOW INDEXES FROM transactions;

--To Add new Index
CREATE INDEX name_phone_idex
ON customers(customer_name , phone);

--To DROP an Index
ALTER TABLE customers
DROP INDEX name_phone_idex;