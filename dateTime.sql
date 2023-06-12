CREATE TABLE IF NOT EXISTS log(
	date DATE,
	time time,
	dateTime DATETIME
);
INSERT INTO log
VALUES(current_date() , current_time(), NOW());


INSERT INTO log
VALUES(current_date() , current_time(), current_timestamp());

INSERT INTO log
VALUES(curdate() , curtime() , current_timestamp());

SELECT * FROM log;