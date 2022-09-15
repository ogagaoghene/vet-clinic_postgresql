-- Write queries to answer the following:
-- Who was the last animal seen by William Tatcher?
SELECT a.name, v.day_of_visit FROM animals a JOIN visits v ON a.id = v.animals_id 
WHERE v.vet_id = (
  SELECT id FROM vets WHERE vets.name LIKE 'William Tatcher'
) ORDER BY v.day_of_visit DESC LIMIT 1;

-- How many different animals did Stephanie Mendez see?
SELECT COUNT(DISTINCT a.name) FROM animals a JOIN visits v ON a.id = v.animals_id 
WHERE v.vet_id  = (
  SELECT id FROM vets WHERE vets.name LIKE 'Stephanie Mendez'
)
-- List all vets and their specialties, including vets with no specialties.
SELECT 
  v.name, 
  s.name AS speciality 
FROM vets v 
LEFT JOIN 
(SELECT 
   s.name, 
   sp.vet_id AS id 
FROM species s 
JOIN specializations sp 
ON sp.specie_id = s.species_id
) AS s ON v.id = s.id GROUP BY v.name, speciality;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.
SELECT a.name, b.day_of_visit FROM (
    SELECT a.name, a.id FROM animals a JOIN visits v ON a.id = v.animals_id GROUP BY a.name, a.id
) AS a JOIN visits b ON b.vet_id = (SELECT id FROM vets WHERE vets.name LIKE 'Stephanie Mendez') 
WHERE b.day_of_visit BETWEEN '2020-04-01' AND '2020-08-30';

-- What animal has the most visits to vets?
SELECT COUNT(*) AS how_many, name_pkm FROM (
    SELECT a.name FROM animals a JOIN visits v ON a.id = v.animals_id
) AS name_pkm GROUP BY name_pkm
ORDER BY how_many DESC;

-- Who was Maisy Smith's first visit?
SELECT a.name, v.day_of_visit FROM animals a JOIN visits v ON a.id = v.animals_id 
WHERE v.vet_id = (SELECT id FROM vets WHERE name LIKE 'Maisy Smith')
ORDER BY v.day_of_visit ASC;

-- Details for most recent visit: animal information, vet information, and date of visit.
SELECT v.day_of_visit, a.*, b.*
FROM visits v
FULL OUTER JOIN animals a ON a.id = v.animals_id
FULL OUTER JOIN vets b ON b.id = v.vet_id
ORDER BY v.day_of_visit ASC LIMIT 1;

-- How many visits were with a vet that did not specialize in that animal's species?
SELECT SUM(count) AS how_many FROM (
SELECT COUNT(distinct v.day_of_visit) FROM visits v
JOIN animals a ON v.animals_id = a.id
LEFT JOIN specializations AS sp ON v.vet_id = sp.vet_id
WHERE a.species_id <> sp.specie_id 
AND v.vet_id <> (SELECT id FROM vets WHERE name LIKE 'Stephanie Mendez')
UNION ALL
SELECT COUNT(v.day_of_visit) FROM visits v
JOIN animals a ON v.animals_id = a.id
LEFT JOIN specializations AS sp ON v.vet_id = sp.vet_id
WHERE sp.specie_id ISNULL
) AS MyNewTable;

-- What specialty should Maisy Smith consider getting? Look for the species she gets the most.
SELECT s.name, COUNT(*) FROM visits v 
JOIN animals a ON v.animals_id = a.id 
JOIN vets b ON v.vet_id = b.id
JOIN species s ON a.species_id = s.species_id 
WHERE v.vet_id = (SELECT id FROM vets WHERE name LIKE 'Maisy Smith')
GROUP BY s.name;

