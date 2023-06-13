-- RUN foreignKey.sql queries before

SELECT * FROM transactions LIMIT 5;

-- with Offset , Limit
SELECT * FROM transactions LIMIT 5 , 8;

SELECT * FROM transactions ORDER BY amount DESC LIMIT 5;

SELECT * FROM transactions ORDER BY amount DESC LIMIT 10 , 5;