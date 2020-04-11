CREATE DATABASE trainer_tracker;
USE trainer_tracker;


CREATE TABLE trainer (

id int(40) NOT NULL AUTO_INCREMENT,
first_name varchar(45) DEFAULT NULL,
last_name varchar(45) DEFAULT NULL,
subject varchar(45) DEFAULT NULL,
PRIMARY KEY (id)




);
select * from trainer;
INSERT INTO trainer VALUES
(1,'David','Adams','Java') ,
(2,'John','Doe','Java'),
(3,'Nick','Cage','Java'),
(4,'Mary','Smith','C#'),
(5,'Maxwell','Dixon','C#');

SELECT * FROM trainer;



