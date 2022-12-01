-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- Makes it so all of the following code will affect ecommerce_db --
USE ecommerce_db;


CREATE TABLE Category (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(30) NOT NULL
)

CREATE TABLE Product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL NOT NULL,
    stock INT NOT NULL DEFAULT(10),
    category_id INT,
    FOREIGN KEY (category_id)
    REFERENCES category(id)
)

CREATE TABLE Tag (
    id NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(30),
    ProductTag INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_id INT,
    FOREIGN KEY (tag_id)
    REFERENCES tag(id)
)
