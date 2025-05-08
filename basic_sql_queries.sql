-- Active: 1745648994699@@127.0.0.1@3306@movies
ALTER TABLE temp1 
ADD CONSTRAINT Compositekey PRIMARY KEY (Id, Age);


SELECT * FROM temp1;

ALTER TABLE temp1
ADD CONSTRAINT CompositeKey PRIMARY KEY (Id, Age);


INSERT INTO temp1  VALUES
(1,'ad',23,TRUE,0);

SELECT * FROM temp1;

ALTER TABLE temp1 ADD CONSTRAINT UNIQUE (Id);


ALTER TABLE temp1 MODIFY age VARCHAR(50);
/* to change the age data type */

ALTER TABLE temp1 CHANGE Age Years INT;
/* to change the age column name to years name */

ALTER TABLE temp1 MODIFY  Years BIGINT NOT NULL;

ALTER TABLE temp1 MODIFY Years INT;


ALTER TABLE temp1 DROP CONSTRAINT Compositekey;

SHOW CREATE TABLE temp1;



