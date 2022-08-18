UPDATE person SET first_name = 'Hilarious Guy'
    WHERE first_name='Hilarious Guy';

UPDATE pet SET name = 'Fancy pants'
    WHERE id=0;

UPDATE person SET first_name = 'Zed "Hilarious Guy"'
    WHERE id=0;

UPDATE pet SET dead='deceased'
  WHERE dead=1;

UPDATE pet SET dead='alive'
  WHERE dead=0;

SELECT * FROM person;
SELECT * FROM pet;
