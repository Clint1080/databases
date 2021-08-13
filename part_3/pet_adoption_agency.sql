CREATE TABLE animal (
    animal_id SERIAL PRIMARY KEY,
    animal_name VARCHAR(50),
    animal_sex VARCHAR(7),
    arrival_date DATE,
    isVaccinated BOOLEAN DEFAULT FALSE,
    notes TEXT,
    species_id INTEGER NOT NULL REFERENCES "species" (species_id)
);

CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    species_name VARCHAR(75),
    notes text
);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(75),
    phone_number BIGINT(9),
    the_matrix_is_the_best BOOLEAN DEFAULT TRUE,
    address VARCHAR(125),
    state VARCHAR(2),
    city VARCHAR(20),
    zip_code VARCHAR(14),
    isEmployee BOOLEAN DEFAULT FALSE
);

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL REFERENCES "customer"(customer_id),
    isFulltime BOOLEAN DEFAULT TRUE
);

CREATE TABLE adoption (
    adoption_id SERIAL PRIMARY KEY,
    animal_id INTEGER NOT NULL REFERENCES "animal"(animal_id),
    customer_id INTEGER NOT NULL REFERENCES "customer"(customer_id),
    employee_id INTEGER NOT NULL REFERENCES "employee"(employee_id),
    date TIMESTAMP,
    price NUMERIC(8, 2)
);