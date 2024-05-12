CREATE TABLE IF NOT EXISTS user(
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    email VARCHAR(70) UNIQUE,
    full_name VARCHAR(50),
    address VARCHAR(255),
    phone VARCHAR(100)
);

INSERT IGNORE INTO user (username, password, email, full_name, address, phone) VALUES ("admin", "admin", "admin", "admin", "admin", "admin");


-- CREATE TABLE IF NOT EXISTS product(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255),
--     description VARCHAR(1000),
--     type VARCHAR(50),
--     brand VARCHAR(50),
--     stock INT(10000),
--     price FLOAT(255),
--     image VARCHAR(1000)
-- );

-- INSERT INTO product (name, description, type, brand, stock, price, image) VALUES ('imagen1.jpg', '/ruta/a/imagen1.jpg');

