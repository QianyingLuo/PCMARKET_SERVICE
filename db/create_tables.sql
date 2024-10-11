CREATE TABLE IF NOT EXISTS user(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(70) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    type VARCHAR(15) DEFAULT 'cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT IGNORE INTO user (name, email, password, type) VALUES ("adminadmin", "admin@admin.com", "$2a$10$Y3/Ms/LwRUYVxsWG73ULOuW6rhL.pJx9k6tnp8Ci1E498wplVEmNC", "administrador");

CREATE TABLE IF NOT EXISTS product(
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(255) NOT NULL UNIQUE,
     description TEXT NULL,
     type VARCHAR(50) NOT NULL,
     brand VARCHAR(50) NOT NULL,
     stock INT NOT NULL,
     price FLOAT NOT NULL,
     discount_decimal FLOAT,
     stars FLOAT,
     image VARCHAR(255) NOT NULL UNIQUE
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS description_section(
     id INT AUTO_INCREMENT PRIMARY KEY,
     product_id INT NOT NULL,
     title VARCHAR(255) NOT NULL,
     description TEXT NOT NULL,
     FOREIGN KEY (product_id) REFERENCES product(id)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS description_list(
     id INT AUTO_INCREMENT PRIMARY KEY,
     product_id INT NOT NULL,
     title VARCHAR(255) NOT NULL,
     description TEXT NOT NULL,
     FOREIGN KEY (product_id) REFERENCES product(id)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS description_dictionary(
     id INT AUTO_INCREMENT PRIMARY KEY,
     product_id INT NOT NULL,
     title VARCHAR(255) NOT NULL,
     description TEXT NOT NULL,
     FOREIGN KEY (product_id) REFERENCES product(id)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS temporary_cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    product_quantity INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS delivery_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    address VARCHAR(40) NOT NULL,
    complement_address VARCHAR(30) NULL,
    postcode VARCHAR(10) NOT NULL,
    city VARCHAR(30) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    country VARCHAR(20) NULL,
    FOREIGN KEY (user_id) REFERENCES user(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS order_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    amount FLOAT NOT NULL,
    user_id INT NOT NULL,
    first_name VARCHAR(15) DEFAULT NULL,
    last_name VARCHAR(15) DEFAULT NULL,
    address VARCHAR(40) DEFAULT NULL,
    complement_address VARCHAR(30) DEFAULT NULL,
    postcode VARCHAR(10) DEFAULT NULL,
    city VARCHAR(30) DEFAULT NULL,
    phone VARCHAR(15) DEFAULT NULL,
    country VARCHAR(20) DEFAULT NULL,
    creation_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS order_cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    product_quantity INT NOT NULL,
    subtotal FLOAT NOT NULL,
    order_id INT DEFAULT NULL,
    FOREIGN KEY (order_id) REFERENCES order_table(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS favorite (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;