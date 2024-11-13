CREATE TABLE TypeCompany (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Partners (
    id SERIAL PRIMARY KEY,
    type_partner INT,
    company_name VARCHAR(255),
    ur_adress VARCHAR(255),
    inn VARCHAR(50),
    director_name VARCHAR(255),
    phone VARCHAR(50),
    email VARCHAR(255),
    rating INT,
    FOREIGN KEY (type_partner) REFERENCES TypeCompany(id)
);

CREATE TABLE ProductType (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    coefficient FLOAT
);

CREATE TABLE Product (
    id SERIAL PRIMARY KEY,
    type INT,
    description VARCHAR(255),
    article INT,
    price FLOAT,
    size FLOAT,
    class INT,
    FOREIGN KEY (type) REFERENCES ProductType(id)
);

CREATE TABLE PartnerProduct (
    id SERIAL PRIMARY KEY,
    id_product INT,
    id_partner INT,
    quantity INT,
    date_of_sale DATE,
    FOREIGN KEY (id_product) REFERENCES Product(id),
    FOREIGN KEY (id_partner) REFERENCES Partners(id)
);

CREATE TABLE Material (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    defect FLOAT
);

CREATE TABLE MaterialProduct (
    id SERIAL PRIMARY KEY,
    id_product INT,
    id_material INT,
    FOREIGN KEY (id_product) REFERENCES Product(id),
    FOREIGN KEY (id_material) REFERENCES Material(id)
);
