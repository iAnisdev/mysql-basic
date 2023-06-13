DROP DATABASE IF EXISTS foodchains;

CREATE DATABASE IF NOT EXISTS foodchains;

USE foodchains;

CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    referBy INT,
    FOREIGN KEY(referBy) REFERENCES users(id)
);

INSERT INTO users(name , email) VALUES("James" , "james@gmail.com"),("Andrew" , "andrew@gmail.com") , ("Marc" , "marc@gmail.com"), ("Mark" , "mark@gmail.com");
INSERT INTO users(name , email , referBy) VALUES("Taylor" , "taylor@gmail.com" , 3),("Shan" , "shan@gmail.com" , 2) , ("Phillips" , "phillips@gmail.com" , 1), ("Phel" , "phel@gmail.com" , 4), ("Frank" , "frank@gmail.com" , 1), ("Stu" , "stu@gmail.com" , 3);

-- Will show only Referred users
SELECT user.id , user.name , user.email , referred.name AS "Referred By" , referred.email AS "Referred Email"
FROM users AS user
INNER JOIN users AS referred
ON user.referBy = referred.id;


-- Will show All users
SELECT user.id , user.name , user.email , referred.name AS "Referred By" , referred.email AS "Referred Email"
FROM users AS user
LEFT JOIN users AS referred
ON user.referBy = referred.id;
