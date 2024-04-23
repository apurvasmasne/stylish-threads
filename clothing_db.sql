CREATE DATABASE clothing_db;

USE clothing_db;

-- Create the 'products' table
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);

-- Insert sample data into the 'products' table
INSERT INTO products (name, price, image) VALUES
('Men\'s T-shirt', 19.99, 'tshirt.jpg'),
('Women\'s Dress', 39.99, 'dress.jpg'),
('Men\'s Jeans', 29.99, 'jeans.jpg'),
('Women\'s Shoes', 49.99, 'shoes.jpg');
