-- RUN insert.sql queries before

SET SQL_SAFE_UPDATES=OFF;

UPDATE employees 
SET payRate = 26.50
WHERE employeeId = 1 ;


UPDATE employees 
SET payRate = 18.00,
hiredDate = "2023-06-12",
isCurrentlyEmployed = 1
WHERE employeeId = 6;


UPDATE employees 
SET lastLogin = NULL
WHERE employeeId = 5;