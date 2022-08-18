DELETE FROM person_pet WHERE(
    SELECT pet_id
    FROM pet, person_pet, person
    WHERE 
    person.id=person_pet.person_id AND
    pet.id=person_pet.pet_id AND
    pet.dead = 1
);

SELECT * FROM person_pet;
