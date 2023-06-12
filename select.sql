-- RUN insert.sql queries before

SELECT * FROM employees;

SELECT email , firstName , lastName   FROM employees;

SELECT * FROM employees WHERE employeeId = 1;

SELECT * FROM employees WHERE payRate  >= 23;

SELECT * FROM employees WHERE hiredDate <= "2023-02-01";

SELECT * FROM employees WHERE employeeId != 4;

SELECT * FROM employees WHERE hiredDate is NULL;

SELECT * FROM employees WHERE hiredDate is NOT NULL;

