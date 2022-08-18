INSERT INTO person (id,first_name,last_name,age)
    VALUES (0,'Zed','Shaw',37);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0,'Fluffy', 'Unicorn', 1000,0);

INSERT INTO pet VALUES (1,'Gigantor','Robot',1,1), (2,'Mauricio','Cat',1,1),(3,'Chato','dog',1,1);
INSERT INTO person VALUES (1,'Axel','Roman',18);

ALTER TABLE person ADD COLUMN height INTEGER;
ALTER TABLE person ADD COLUMN weight INTEGER;
