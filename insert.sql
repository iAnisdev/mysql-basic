-- RUN table.sql queries before

INSERT INTO employees 
VALUES(1 , "James" , "David" , "james.david@gmail.com" , "0968417234", 25.50 , "2023-01-01" , true , NOW());

INSERT INTO employees 
VALUES(2 , "Adam" , "Wolf" , "adam.wofl@gmail.com" , "0987583124", 25.50 , "2023-02-01" , true , NOW()),
(3 , "Stuart" , "Law" , "s.law@gmail.com" , "0917485124", 21.50 , "2022-01-01" , false , NOW()),
(4 , "Michelle" , "james" , "michelle.james@gmail.com" , "0974135134", 18 , "2023-03-01" , true , NOW()),
(5 , "Mark" , "Taylor" , "mark.taylor@gmail.com" , "09317457813", 22.79 , "2023-04-01" , true , NOW());


INSERT INTO employees (employeeId , firstName , lastName , email , phoneNumber)
VALUES(6 , "Andrew" , "Puttick" , "andrew.p@gmail.com" , "0984651386");