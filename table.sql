-- RUN database.sql queries before

CREATE TABLE IF NOT EXISTS users (
employeeId INT UNIQUE,
firstName VARCHAR(25) NOT NULL,
lastName VARCHAR(25) NOT NULL,
payRate DECIMAL(6, 2),
hiredDate DATE,
isCurrentlyEmployed BOOLEAN,
lastLogin DATETIME
);

-- DROP TABLE users;

RENAME TABLE users TO employees;


ALTER TABLE employees
ADD email varchar(30);

ALTER TABLE employees
ADD phone_number varchar(15) UNIQUE NOT NULL;


ALTER TABLE employees
RENAME COLUMN phone_number TO phoneNumber;

ALTER TABLE employees
MODIFY COLUMN email VARCHAR(25) UNIQUE NOT NULL;


ALTER TABLE employees
ADD COLUMN idx int;

ALTER TABLE employees
MODIFY idx int
FIRST;


ALTER TABLE employees
DROP COLUMN idx;