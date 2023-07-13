CREATE DATABASE pet_shop;

CREATE TABLE pets (
    pet_id SERIAL PRIMARY KEY,
    pet_name VARCHAR(255) NOT NULL,
    pet_type VARCHAR(255) NOT NULL,
    pet_breed VARCHAR(255) NOT NULL,
    pet_age INT NOT NULL,
    pet_price DECIMAL NOT NULL
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    customer_address VARCHAR(255) NOT NULL,
    customer_phone VARCHAR(255) NOT NULL
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    pet_id INT REFERENCES pets(pet_id),
    order_date DATE NOT NULL
);