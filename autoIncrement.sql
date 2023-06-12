-- RUN database.sql queries before

DROP TABLE IF EXISTS transactions;

CREATE TABLE IF NOT EXISTS transactions (
	id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2) NOT NULL,
    timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO transactions(amount) VALUES(2.19);
INSERT INTO transactions(amount) VALUES(1.81);
INSERT INTO transactions(amount) VALUES(1.22);
INSERT INTO transactions(amount) VALUES(2.76);

ALTER TABLE transactions
AUTO_INCREMENT = 98696641;

INSERT INTO transactions(amount) VALUES(1.12);
INSERT INTO transactions(amount) VALUES(2.53);
INSERT INTO transactions(amount) VALUES(1.96);

SELECT * FROM transactions;