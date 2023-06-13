-- RUN foreignKey.sql queries before

SELECT * FROM transactions WHERE type = "CREDIT" AND account_id = 5;
SELECT * FROM transactions WHERE type = "CREDIT" OR account_id = 5;
SELECT * FROM transactions WHERE NOT type = "CREDIT" AND NOT account_id = 5;
SELECT * FROM transactions WHERE account_id IN(1 , 3 , 6);