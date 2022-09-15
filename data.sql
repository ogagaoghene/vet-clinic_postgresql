-- Insert data into the vets table:
INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '2000-04-23');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '2019-01-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, '2008-06-08');

-- Insert data into the specializations table:
-- Vet William Tatcher is specialized in pokemon
INSERT INTO specializations (vet_id, specie_id) VALUES (
  (SELECT vets.id FROM vets WHERE name LIKE 'William Tatcher'),
  (SELECT species_id FROM species WHERE species.name LIKE 'Pokemon')
);

-- Vet Stephanie Mendez is specialized in Digimon and Pokemon.
INSERT INTO specializations (vet_id, specie_id) VALUES (
  (SELECT vets.id FROM vets WHERE name LIKE 'Stephanie Mendez'),
  (SELECT species_id FROM species WHERE species.name LIKE 'Pokemon')
);

INSERT INTO specializations (vet_id, specie_id) VALUES (
  (SELECT vets.id FROM vets WHERE name LIKE 'Stephanie Mendez'),
  (SELECT species_id FROM species WHERE species.name LIKE 'Digimon')
);

-- Vet Jack Harkness is specialized in Digimon.
INSERT INTO specializations (vet_id, specie_id) VALUES (
  (SELECT vets.id FROM vets WHERE name LIKE 'Jack Harkness'),
  (SELECT species_id FROM species WHERE species.name LIKE 'Digimon')
);

-- Insert the following data for visits:
-- Agumon visited William Tatcher on May 24th, 2020.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Agumon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'William Tatcher'),
  '2020-05-24'
);

-- Agumon visited Stephanie Mendez on Jul 22th, 2020.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Agumon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Stephanie Mendez'),
  '2020-07-22'
);

-- Gabumon visited Jack Harkness on Feb 2nd, 2021.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Gabumon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Jack Harkness'),
  '2021-02-02'
);

-- Pikachu visited Maisy Smith on Jan 5th, 2020.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Pikachu'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Maisy Smith'),
  '2020-01-05'
);

-- Pikachu visited Maisy Smith on Mar 8th, 2020.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Pikachu'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Maisy Smith'),
  '2020-03-08'
);

-- Pikachu visited Maisy Smith on May 14th, 2020.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Pikachu'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Maisy Smith'),
  '2020-04-14'
);

-- Devimon visited Stephanie Mendez on May 4th, 2021.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Devimon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Stephanie Mendez'),
  '2021-05-04'
);

-- Charmander visited Jack Harkness on Feb 24th, 2021.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Charmander'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Jack Harkness'),
  '2021-02-24'
);

-- Plantmon visited Maisy Smith on Dec 21st, 2019.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Plantmon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Maisy Smith'),
  '2019-12-21'
);

-- Plantmon visited William Tatcher on Aug 10th, 2020.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Plantmon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'William Tatcher'),
  '2020-08-10'
);

-- Plantmon visited Maisy Smith on Apr 7th, 2021.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Plantmon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Maisy Smith'),
  '2021-04-07'
);

-- Squirtle visited Stephanie Mendez on Sep 29th, 2019.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Squirtle'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Stephanie Mendez'),
  '2019-09-29'
);

-- Angemon visited Jack Harkness on Oct 3rd, 2020.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Angemon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Jack Harkness'),
  '2020-10-03'
);

-- Angemon visited Jack Harkness on Nov 4th, 2020.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Angemon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Jack Harkness'),
  '2020-11-04'
);

-- Boarmon visited Maisy Smith on Jan 24th, 2019.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Boarmon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Maisy Smith'),
  '2019-01-24'
);

-- Boarmon visited Maisy Smith on May 15th, 2019.
INSERT INTO visits (animals_id, vet_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Boarmon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Maisy Smith'),
  '2019-05-15'
);

-- Boarmon visited Maisy Smith on Feb 27th, 2020.
INSERT INTO visits (animals_id, vets_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Boarmon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Maisy Smith'),
  '2020-02-27'
);

-- Boarmon visited Maisy Smith on Aug 3rd, 2020.
INSERT INTO visits (animals_id, vets_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Boarmon'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Maisy Smith'),
  '2020-08-03'
);

-- Blossom visited Stephanie Mendez on May 24th, 2020.
INSERT INTO visits (animals_id, vets_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Blossom'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'Stephanie Mendez'),
  '2020-05-24'
);

-- Blossom visited William Tatcher on Jan 11th, 2021.
INSERT INTO visits (animals_id, vets_id, day_of_visit) VALUES (
  (SELECT animals.id FROM animals WHERE name LIKE 'Blossom'),
  (SELECT vets.id FROM vets WHERE vets.name LIKE 'William Tatcher'),
  '2021-01-11'
);