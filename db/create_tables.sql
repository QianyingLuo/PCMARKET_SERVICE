CREATE TABLE IF NOT EXISTS user(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(70) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    address VARCHAR(70),
    phone VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT IGNORE INTO user (name, email, password) VALUES ("adminadmin", "admin@admin.com", "$2a$10$Y3/Ms/LwRUYVxsWG73ULOuW6rhL.pJx9k6tnp8Ci1E498wplVEmNC");

CREATE TABLE IF NOT EXISTS product(
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(255) NOT NULL,
     description TEXT NULL,
     type VARCHAR(50) NOT NULL,
     brand VARCHAR(50) NOT NULL,
     stock INT NOT NULL,
     price FLOAT NOT NULL,
     discount_decimal FLOAT,
     stars FLOAT,
     image TEXT NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS description_section(
     id INT AUTO_INCREMENT PRIMARY KEY,
     product_id INT,
     title VARCHAR(255) NOT NULL,
     description TEXT NOT NULL,
     FOREIGN KEY (product_id) REFERENCES product(id)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS description_list(
     id INT AUTO_INCREMENT PRIMARY KEY,
     product_id INT,
     title VARCHAR(255) NOT NULL,
     description TEXT NOT NULL,
     FOREIGN KEY (product_id) REFERENCES product(id)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS description_dictionary(
     id INT AUTO_INCREMENT PRIMARY KEY,
     product_id INT,
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