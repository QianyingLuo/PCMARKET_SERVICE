CREATE TABLE IF NOT EXISTS user(
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    email VARCHAR(255),
    full_name VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(255)
);

INSERT IGNORE INTO user (id, username, password, email, full_name, address, phone) VALUES (1, "admin", "admin", "admin", "admin", "admin", "admin");

