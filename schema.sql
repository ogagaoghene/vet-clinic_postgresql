CREATE TABLE owners (
    owners_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    owners_age INT
);

CREATE TABLE species (
    species_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(150) NOT NULL
);

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INT REFERENCES species(species_id);
ALTER TABLE animals ADD COLUMN owners_id INT REFERENCES owners(owners_id);