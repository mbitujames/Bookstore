-- This SQL script contains codes to create the database and all the tables for the bookstore

-- SECTION 1: RACHEL RUGURU SQL CODES



-- SECTION 2: JAMES MBITU SQL CODES

-- creating Country table
CREATE TABLE country (
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(100) NOT NULL,
    country_code VARCHAR(10) NOT NULL
);

-- creating Address status table
CREATE TABLE address_status (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(50) NOT NULL
);

-- creating Address table
CREATE TABLE address (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    street_number VARCHAR(20) NOT NULL,
    street_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    country_id INT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

-- creating Customer table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- creating Customer address table
CREATE TABLE customer_address (
    customer_id INT NOT NULL,
    address_id INT NOT NULL,
    status_id INT NOT NULL,
    PRIMARY KEY (customer_id, address_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id),
    FOREIGN KEY (status_id) REFERENCES address_status(status_id)
);

-- SECTION 3: CYNTHIA KIMANI SQL CODES

