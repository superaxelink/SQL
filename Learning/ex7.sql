/*check for dead pets*/
SELECT name, age FROM pet WHERE dead = 1;

/*we delete the robot which is dead*/
DELETE FROM pet WHERE dead=1;

/*make sure robot is gone*/
SELECT * FROM pet;

/*let's resurrect the robot, mauricio and chato*/
INSERT INTO pet VALUES (1,'Gigantor','Robot',1,0), (2,'Mauricio','cat',1,0),(3,'Chato','dog',1,0);

/*The robot lives*/
SELECT * FROM pet;

