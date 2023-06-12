-- RUN database.sql queries before

DROP table IF EXISTS users;

CREATE TABLE IF NOT EXISTS users(
    id INT NOT NULL UNIQUE,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(30) UNIQUE NOT NULL,
    phone_number VARCHAR(25) UNIQUE NOT NULL,
    experience INT NOT NULL,
    age INT NOT NULL,
    dob DATE NOT NULL,
    is_active BOOLEAN NOT NULL,
    last_login DATETIME,
    CONSTRAINT chk_exp CHECK (experience > 3)
);

ALTER TABLE users
ADD CONSTRAINT chk_age CHECK (age > 24);

INSERT INTO users VALUES(1 , "Anis" , "Khan" , "anis@gmail.com", "0123456789" , 5, 29 , "1994-01-01", true , current_timestamp());

ALTER TABLE users
DROP CHECK chk_age;


INSERT INTO users VALUES(2 , "Marc" , "Chapman" , "marc@gmail.com", "0978468581" , 4, 23 , "1994-01-01", true , current_timestamp());

SELECT * FROM users;