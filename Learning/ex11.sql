/*This should fail because 0 is already taken.*/
INSERT INTO person(id, first_name,last_name,age)
	VALUES(0,'Frank','Smith',100);

/*We can force it by doing an INSERT OR REPLACE.*/
INSERT OR REPLACE INTO person(id,first_name,last_name,age)
	VALUES(0,'Frank','Smith',100);

SELECT * FROM pet;
SELECT * FROM person;

/*And shorthand for this is juts REPLACE*/
REPLACE INTO person(id,first_name,last_name,age)
	VALUES(0,'Zed','Shaw',37);

REPLACE INTO pet(id,name,breed,age,dead)
	VALUES(0,'Blu','Parrot',4,0);

REPLACE INTO pet(id,name,breed,age,dead)
	VALUES(1,'Gigantor','Robot',1,1);

/*Zed's back*/
SELECT * FROM person;
SELECT * FROM pet;
