CREATE TABLE patients (
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name VARCHAR(50), 
date_of_birth DATE
);

CREATE TABLE treatments (
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
type VARCHAR(50),
name VARCHAR(50)
);

CREATE TABLE medical_histories (
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
admitted_at TIMESTAMP,
patient_id INT REFERENCES patients(id),
status VARCHAR(50)
);

CREATE TABLE invoices (
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
total_amount DECIMAL,
generated_at TIMESTAMP,
payed_at TIMESTAMP,
medical_history_id INT REFERENCES medical_histories(id)
);

CREATE TABLE invoice_items (
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
unit_price DECIMAL,
quantity INT,
total_price DECIMAL,
invoice_id INT REFERENCES invoices(id),
treatment_id INT  REFERENCES treatment(id)
);
