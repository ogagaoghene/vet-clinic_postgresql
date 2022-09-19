CREATE TABLE vets (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50),
    age INT,
    date_of_graduation DATE,
    PRIMARY KEY (id)
);

CREATE TABLE specializations (
    vet_id INT,
    specie_id INT,
    FOREIGN KEY (vet_id) REFERENCES vets(id),
    FOREIGN KEY (specie_id) REFERENCES species(species_id)
);

CREATE TABLE visits (
    animals_id INT,
    vet_id INT,
    day_of_visit DATE,
    FOREIGN KEY (animals_id) REFERENCES animals(id),
    FOREIGN KEY (vets_id) REFERENCES vets(id)
);

--Modify owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);
