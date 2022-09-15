/*TRANSACTIONS*/
BEGIN;
UPDATE animals SET species = 'unspecified';
ROLLBACK;
SELECT * FROM animals;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species is NULL;
COMMIT;
SELECT * FROM animals;

BEGIN;
DROP TABLE animals;
ROLLBACK;
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SELECT * FROM animals;
SAVEPOINT deleted_animals;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO deleted_animals;
SELECT * FROM animals;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;
SELECT * FROM animals;

/*Use aggregate function Count to count the number of animals*/
SELECT COUNT(*) from animals;

/*Count the number of animals that had not made attempt to escape*/
SELECT COUNT(*) from animals WHERE escape_attempts = 0;

/* Use aggregate function Average to determine the average weight of all the animals*/
SELECT ROUND(AVG(weight_kg)::numeric, 3) FROM animals;

/*Who escapes the most, neutered or not neutered animals?*/
SELECT name FROM animals WHERE escape_attempts = (SELECT MAX(escape_attempts) FROM animals);

/*What is the minimum and maximum weight of each type of animal?*/
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

/*What is the average number of escape attempts per animal type of those born between 1990 and 2000?*/clear
SELECT species, ROUND(AVG(escape_attempts)::numeric, 0) FROM animals WHERE date_of_birth >= '1990-01-01' AND date_of_birth <= '2000-12-31' GROUP BY species;