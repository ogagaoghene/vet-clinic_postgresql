/* Write query using JOIN */

/*What animals belong to Melody Pond*/
SELECT name FROM animals INNER JOIN owners ON animals.owners_id = owners.owners_id WHERE owners.full_name = 'Melody Pond';

/*List of all animals that are pokemon*/
SELECT animals.name FROM animals JOIN species ON animals.species_id = species.species_id WHERE species.name = 'Pokemon';

/* List all owners and their animals, remember to include those that don't own any animal.*/
SELECT owners.full_name, animals.name FROM animals RIGHT JOIN owners ON animals.owners_id = owners.owners_id ;

/* How many animals are there per species?*/
SELECT species.name, COUNT(*) FROM animals JOIN species ON animals.species_id = species.species_id GROUP by species.name;

/*List all Digimon owned by Jennifer Orwell*/
SELECT animals.name FROM animals JOIN owners ON animals.owners_id = owners.owners_id JOIN species ON animals.species_id = species.species_id WHERE owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon';

/* List all animals owned by Dean Winchester that haven't tried to escape.*/
SELECT animals.name FROM animals JOIN owners ON animals.owners_id = owners.owners_id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0 GROUP BY animals.name;

/*Who owns the most animals?*/
SELECT owners.full_name, COUNT(*) FROM owners JOIN animals ON owners.owners_id = animals.owners_id GROUP BY owners.full_name ORDER BY COUNT(*) DESC LIMIT 1;
