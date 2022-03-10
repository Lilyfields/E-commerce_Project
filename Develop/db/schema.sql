-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE catergory (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(30)
);

CREATE TABLE Product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR (30),
    price DECIMAL,
    stock INT,
    catergory_id INT,
    FOREIGN KEY (catergory_id) REFERENCES catergory(id) ON DELETE SET NULL

);

CREATE TABLE tag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(30),
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product (id) ON DELETE SET NULL
);

CREATE TABLE ProductTag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    tag_id INT,
    FOREIGN KEY (tag_id) REFERENCES tag (id) ON DELETE SET NULL
);



