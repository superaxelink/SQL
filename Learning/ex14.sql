
ALTER TABLE person ADD COLUMN phone_number INTEGER;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;
/*ALTER TABLE pet ADD COLUMN parent_to_pet INTEGER;*/

UPDATE person SET dead=0;

UPDATE person SET phone_number=9913211231, salary=7000, dob=1970-05-14
	WHERE person.id='Zed';

UPDATE person SET phone_number=5547826267, salary=1500, dob=2003-10-31
	WHERE person.first_name='Axel';

UPDATE pet SET dob=1022-01-01
	WHERE pet.name='Fluffy';

UPDATE pet SET dob=2021-01-01
	WHERE pet.name='Gigantor';

UPDATE pet SET dob=2017-12-31
	WHERE pet.name='Mauricio';

UPDATE pet SET dob= 2010-12-13
	WHERE pet.name='Chato';

UPDATE person_pet SET purchased_on =1980-05-14 WHERE(
	SELECT pet.id
	FROM person, pet, person_pet
	WHERE 
	person.id=person_pet.person_id AND
	pet.id=person_pet.pet_id AND
	person.first_name='Zed'AND
	pet.name = 'Fluffy'
);

UPDATE person_pet SET purchased_on = 2021-01-02 WHERE(
	SELECT pet.id
	FROM person, pet, person_pet
	WHERE 
	person.id=person_pet.person_id AND
	pet.id=person_pet.pet_id AND 
	person.first_name = 'Zed' AND 
	pet.name = 'Gigantor'
);

UPDATE person_pet SET purchased_on = 2017-11-20 WHERE(
	SELECT pet.id
	FROM person, pet, person_pet
	WHERE 
	person.id=person_pet.person_id AND
	pet.id=person_pet.pet_id AND
	person.first_name = 'Axel' AND 
	pet.name = 'Mauricio'
);

UPDATE person_pet SET purchased_on =2008-03-15 WHERE(
	SELECT pet.id
	FROM person, pet, person_pet
	WHERE 
	person.id=person_pet.person_id AND
	pet.id=person_pet.pet_id AND
	person.first_name = 'Axel' AND 
	pet.name = 'Chato'
);

INSERT OR REPLACE INTO person(id,first_name,last_name,age,dead,phone_number,salary,dob)
	VALUES(2,'Juan','Perez',60,0,5538329210,800,1962-01-01),
	(3,'Marco','Fernandez',50,0,5538329211,800,1972-01-01),
	(4,'Mario','Super',40,0,5538329212,800,1982-01-01),
	(5,'Armando','Jimenez',20,0,5538329213,800,2002-01-01);

INSERT OR REPLACE INTO pet(id,name,age,breed,dead,dob)
	VALUES(4,'Firulais',20,'Dog',1,1972-01-01),
	(5,'Misifus',18,'Cat',1,1982-01-01),
	(6,'Hamtaro',2,'Hamster',1,1992-01-01),
	(7,'Pelos',18,'Dog',1,1994-01-01),
	(8,'Peluche',18,'Dog',0,2004-01-01);

INSERT OR REPLACE INTO person_pet(person_id,pet_id,purchased_on)
	VALUES(2,4,1972-01-01),
	(3,5,1982-01-01),
	(4,6,1992-01-01),
	(4,7,1994-01-01),
	(5,8,2005-01-01);

SELECT pet.name FROM pet, person_pet, person WHERE person.id=person_pet.person_id AND pet.id=person_pet.pet_id AND purchased_on>=CAST('2004-12-31' AS DATETIME);

