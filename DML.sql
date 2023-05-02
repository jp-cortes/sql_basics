-- Insert
INSERT INTO people (last_name, first_name, address, city)
VALUES ('Blade', 'Sonya', '21 jump street', 'Gotham City');

-- Update
UPDATE people
SET last_name = 'Cage', city= 'Neverland'
WHERE person_id = 1;

UPDATE people
SET first_name = 'Jhony'
WHERE city = 'Cali';

UPDATE people
SET first_name = 'Jhony';

-- Delete
DELETE FROM people 
WHERE person_id = 1;

DELETE FROM people;

-- Select
SELECT fist_name, last_name FROM people;
