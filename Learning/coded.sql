CREATE TABLE person(
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE pet(
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);

CREATE TABLE person_pet(
    person_id INTEGER,
    pet_id INTEGER
);
INSERT INTO person (id, first_name,last_name,age)
    VALUES (0,'Zed','Shaw',37);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0,'Fluffy', 'Unicorn', 1000,0);

INSERT INTO pet VALUES (1,'Gigantor','Robot',1,1), (2,'Mauricio','Cat',1,1),(3,'Chato','dog',1,1);
INSERT INTO person VALUES (1,'Axel','Roman',18);
INSERT INTO person_pet (person_id, pet_id) VALUES (0,0);
INSERT INTO person_pet VALUES (0,1);
INSERT INTO person_pet VALUES (1,2);
INSERT INTO person_pet VALUES (1,3);
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

