-- This SQL script contains codes to create the database and all the tables for the bookstore

-- SECTION 1: RACHEL RUGURU SQL CODES
--CODES FOR CREATING THE TABLES

--CODES FOR INSERTING THE DATA INTO THE TABLES

--CODES FOR CREATING A USER



-- SECTION 2: JAMES MBITU SQL CODES
--CODES FOR CREATING THE TABLES

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

--CODES FOR INSERTING DATA INTO THE TABLES
--inserting into country table
INSERT INTO country (country_name, country_code) VALUES 
('Kenya', 'KE'),
('Tanzania', 'TZ'),
('Uganda', 'UG'),
('United States', 'US'),
('United Kingdom', 'UK'),
('South Africa', 'ZA'),
('Nigeria', 'NG'),
('Ethiopia', 'ET'),
('Rwanda', 'RW'),
('Somalia', 'SO'),
('Ghana', 'GH'),
('Egypt', 'EG'),
('France', 'FR'),
('Germany', 'DE'),
('China', 'CN'),
('Japan', 'JP'),
('India', 'IN'),
('Canada', 'CA'),
('Australia', 'AU'),
('Brazil', 'BR');

--inserting into address status table
INSERT INTO address_status (status_name) VALUES 
('Current'),
('Previous'),
('Billing'),
('Shipping'),
('Office'),
('Temporary'),
('Vacation'),
('Permanent'),
('Seasonal'),
('Other');

--inserting into address table
INSERT INTO address (street_number, street_name, city, postal_code, country_id) VALUES
('123', 'Main Street', 'Nairobi', '00100', 1),
('456', 'Uhuru Highway', 'Nairobi', '00100', 1),
('78', 'Kenyatta Avenue', 'Mombasa', '80100', 1),
('9', 'Nkrumah Road', 'Dar es Salaam', '11101', 2),
('22', 'Kampala Road', 'Kampala', '256', 3),
('100', 'Oxford Street', 'London', 'W1D 1LL', 5),
('500', 'Fifth Avenue', 'New York', '10018', 4),
('15', 'Rue de Rivoli', 'Paris', '75004', 13),
('30', 'Friedrichstraße', 'Berlin', '10117', 14),
('55', 'Wangfujing Street', 'Beijing', '100006', 15),
('10', 'Kimathi Street', 'Nairobi', '00100', 1),
('25', 'Ali Hassan Mwinyi Road', 'Dar es Salaam', '11101', 2),
('33', 'Acacia Avenue', 'Kampala', '256', 3),
('200', 'Park Avenue', 'New York', '10166', 4),
('1', 'The Mall', 'London', 'SW1A 2WH', 5),
('40', 'Bree Street', 'Cape Town', '8001', 6),
('12', 'Broad Street', 'Lagos', '100001', 7),
('8', 'Churchill Street', 'Addis Ababa', '1000', 8),
('5', 'KN 4 Avenue', 'Kigali', '250', 9),
('17', 'Makka Al Mukarama Road', 'Mogadishu', '252', 10);

--inserting into table customer
INSERT INTO customer (first_name, last_name, email, phone, registration_date) VALUES
('John', 'James', 'johnjames@gmail.com', '+254712345678', '2025-01-15 09:30:00'),
('Jane', 'Smith', 'jsmith@gmail.com', '+255754321654', '2025-02-20 10:15:00'),
('Michael', 'Johnson', 'michaeljohnson3@gmail.com', '+256772345678', '2025-03-05 11:45:00'),
('Sarah', 'Wangeci', 'sarahwangeci@gmail.com', '+254733456789', '2025-04-10 14:20:00'),
('Charles', 'Brown', 'charlesbrown@gmail.com', '+255765432109', '2025-01-15 16:30:00'),
('Emily', 'Naibei', 'emilynaibei@gmail.com', '+256782345678', '2025-02-20 08:45:00'),
('Robert', 'Samal', 'robertsamal@gmail.com', '+254744567890', '2025-03-25 12:10:00'),
('Jennifer', 'hudson', 'jenniferhudson@gmail.com', '+255776543210', '2025-04-30 15:25:00'),
('Swift', 'Taylor', 'taylorswift@gmail.com', '+256792345678', '2025-09-05 17:40:00'),
('Elizabeth', 'Wangari', 'elizabethwangari@gmail.com', '+254755678901', '2025-05-10 09:55:00'),
('Michael', 'Thomas', 'michaelt@gmail.com', '+255787654321', '2025-01-15 11:05:00'),
('Patricia', 'Jackson', 'patriciajackson@gmail.com', '+256712345678', '2025-02-20 13:15:00'),
('Charles', 'Darwin', 'darwincharles@gmail.com', '+254766789012', '2025-01-25 15:25:00'),
('Mary', 'Maina', 'marymaina@gmail.com', '+255798765432', '2025-02-01 17:35:00'),
('Richard', 'Martin', 'richardm@gmail.com', '+256722345678', '2025-03-10 19:45:00'),
('Susan', 'Thuo', 'susanthuo@gmail.com', '+254777890123', '2025-04-15 08:00:00'),
('Joseph', 'Paul', 'jopaul@gmail.com', '+255709876543', '2025-05-20 10:10:00'),
('Margaret', 'Macharia', 'margaretmacharia1@gmail.com', '+256732345678', '2025-03-25 12:20:00'),
('Tanui', 'Robinson', 'robinsontanui@gmail.com', '+254788901234', '2025-04-30 14:30:00'),
('Kent', 'Clark', 'clarkkent@gmail.com', '+255720987654', '2025-08-05 16:40:00');

--inserting into customer address table
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES
(1, 1, 1), (1, 11, 3), (2, 2, 1), (3, 3, 1), (4, 4, 1),
(5, 5, 1), (6, 6, 1), (7, 7, 1), (8, 8, 1), (9, 9, 1),
(10, 10, 1), (11, 11, 1), (12, 12, 1), (13, 13, 1), (14, 14, 1),
(15, 15, 1), (16, 16, 1), (17, 17, 1), (18, 18, 1), (19, 19, 1),
(20, 20, 1), (2, 12, 4), (3, 13, 4), (4, 14, 4), (5, 15, 4);

--CODES FOR CREATING A USER
-- Creating admin user with full privileges
CREATE USER 'bookstore_admin'@'localhost' IDENTIFIED BY 'Password123!';
GRANT ALL PRIVILEGES ON BookStore.* TO 'bookstore_admin'@'localhost';


-- SECTION 3: CYNTHIA KIMANI SQL CODES
--CODES FOR CREATING THE TABLES

--CODES FOR INSERTING THE DATA INTO THE TABLES

--CODES FOR CREATING A USER
inserting into shipping method
INSERT INTO shipping_method (method_name, cost) VALUES 
('Standard Shipping', 1000),
('Express Shipping', 2000),
('Overnight Shipping', 3000),
('International Shipping', 5000),
('Economy Shipping', 800),
('Local Pickup', 500),
('Courier Service', 2500),
('Same Day Delivery', 1500),
('Media Mail', 3500),
('Priority Mail', 5500);

--inserting into order status table
INSERT INTO order_status (status_name) VALUES 
('Pending'),
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled'),
('Refunded'),
('On Hold'),
('Completed'),
('Returned'),
('Failed');

--inserting into customer order table
INSERT INTO cust_order (customer_id, order_date, shipping_method_id, address_id) VALUES
(1, '2025-01-10 10:30:00', 1, 1),
(2, '2025-01-20 11:45:00', 2, 2),
(3, '2025-02-05 13:15:00', 3, 3),
(4, '2025-02-15 14:30:00', 1, 4),
(5, '2025-02-28 15:45:00', 2, 5),
(6, '2025-03-05 09:00:00', 3, 6),
(7, '2025-03-12 10:15:00', 1, 7),
(8, '2025-03-20 11:30:00', 2, 8),
(9, '2025-03-25 12:45:00', 3, 9),
(10, '2025-04-01 14:00:00', 1, 10),
(11, '2025-04-05 15:15:00', 2, 11),
(12, '2025-04-08 16:30:00', 3, 12),
(13, '2025-04-10 17:45:00', 1, 13),
(14, '2025-04-11 09:00:00', 2, 14),
(15, '2025-04-12 10:15:00', 3, 15),
(16, '2025-04-13 11:30:00', 1, 16),
(17, '2025-04-14 12:45:00', 2, 17),
(18, '2025-04-15 14:00:00', 3, 18),
(19, '2025-04-16 15:15:00', 1, 19),
(20, '2025-04-17 16:30:00', 2, 20);

--inserting into order line table
INSERT INTO order_line (order_id, book_id, quantity, price) VALUES 
(1, 1, 1, 3450), (1, 21, 2, 1100), (2, 2, 1, 2800), (2, 22, 1, 3950),
(3, 3, 1, 500), (3, 23, 1, 1720), (4, 4, 1, 3200), (4, 24, 2, 4999),
(5, 5, 1, 2600), (5, 25, 1, 1320), (6, 6, 1, 2250), (6, 26, 1, 3075),
(7, 7, 1, 1500), (7, 27, 1, 4880), (8, 8, 1, 1750), (8, 28, 1, 2410),
(9, 9, 1, 3010), (9, 29, 1, 3955), (10, 10, 1, 820), (10, 30, 1, 1325),
(11, 11, 1, 4010), (11, 31, 1, 2795), (12, 12, 1, 990), (12, 32, 1, 3550),
(13, 13, 1, 720), (13, 33, 1, 2890), (14, 14, 1, 3150), (14, 34, 1, 2040),
(15, 15, 1, 1895), (15, 35, 1, 1740), (16, 16, 1, 4320), (16, 36, 1, 2255),
(17, 17, 1, 3650), (17, 37, 1, 975), (18, 18, 1, 4200), (18, 38, 1, 1570),
(19, 19, 1, 1985), (19, 39, 1, 2700), (20, 20, 1, 3800), (20, 40, 1, 1050);

--inserting into table order_history
INSERT INTO order_history (order_id, status_id, status_date) VALUES
(1, 1, '2025-01-20 10:30:00'), (1, 2, '2025-01-20 11:30:00'), (1, 3, '2025-01-21 09:00:00'), (1, 4, '2025-01-23 14:00:00'),
(2, 1, '2025-01-25 11:45:00'), (2, 2, '2025-01-25 12:45:00'), (2, 3, '2025-01-26 10:00:00'), (2, 4, '2025-01-28 15:00:00'),
(3, 1, '2025-02-10 13:15:00'), (3, 2, '2025-02-10 14:15:00'), (3, 3, '2025-02-11 11:00:00'), (3, 4, '2025-02-13 16:00:00'),
(4, 1, '2025-02-15 14:30:00'), (4, 2, '2025-02-15 15:30:00'), (4, 3, '2025-02-16 12:00:00'), (4, 4, '2025-02-18 17:00:00'),
(5, 1, '2025-03-01 15:45:00'), (5, 2, '2025-03-01 16:45:00'), (5, 3, '2025-03-02 13:00:00'), (5, 4, '2025-03-04 18:00:00'),
(6, 1, '2025-03-05 09:00:00'), (6, 2, '2025-03-05 10:00:00'), (6, 3, '2025-03-06 08:00:00'), (6, 4, '2025-03-08 12:00:00'),
(7, 1, '2025-03-10 10:15:00'), (7, 2, '2025-03-10 11:15:00'), (7, 3, '2025-03-11 09:00:00'), (7, 4, '2025-03-13 14:00:00'),
(8, 1, '2025-03-15 11:30:00'), (8, 2, '2025-03-15 12:30:00'), (8, 3, '2025-03-16 10:00:00'), (8, 4, '2025-03-18 15:00:00'),
(9, 1, '2025-03-20 12:45:00'), (9, 2, '2025-03-20 13:45:00'), (9, 3, '2025-03-21 11:00:00'), (9, 4, '2025-03-23 16:00:00'),
(10, 1, '2025-03-25 14:00:00'), (10, 2, '2025-03-25 15:00:00'), (10, 3, '2025-03-26 12:00:00'), (10, 4, '2025-03-28 17:00:00'),
(11, 1, '2025-03-30 15:15:00'), (11, 2, '2025-03-30 16:15:00'), (11, 3, '2025-03-31 13:00:00'), (11, 4, '2025-04-02 18:00:00'),
(12, 1, '2025-04-03 16:30:00'), (12, 2, '2025-04-03 17:30:00'), (12, 3, '2025-04-04 14:00:00'), (12, 4, '2025-04-06 19:00:00'),
(13, 1, '2025-04-07 17:45:00'), (13, 2, '2025-04-07 18:45:00'), (13, 3, '2025-04-08 15:00:00'), (13, 4, '2025-04-10 20:00:00'),
(14, 1, '2025-04-01 09:00:00'), (14, 2, '2025-04-01 10:00:00'), (14, 3, '2025-04-02 08:00:00'), (14, 4, '2025-04-04 12:00:00'),
(15, 1, '2025-04-05 10:15:00'), (15, 2, '2025-04-05 11:15:00'), (15, 3, '2025-04-06 09:00:00'), (15, 4, '2025-04-08 14:00:00'),
(16, 1, '2025-04-09 11:30:00'), (16, 2, '2025-04-09 12:30:00'), (16, 3, '2025-04-10 10:00:00'), (16, 4, '2025-04-12 15:00:00'),
(17, 1, '2025-04-01 12:45:00'), (17, 2, '2025-04-01 13:45:00'), (17, 3, '2025-04-02 11:00:00'), (17, 4, '2025-04-04 16:00:00'),
(18, 1, '2025-04-05 14:00:00'), (18, 2, '2025-04-05 15:00:00'), (18, 3, '2025-04-06 12:00:00'), (18, 4, '2025-04-08 17:00:00'),
(19, 1, '2025-04-09 15:15:00'), (19, 2, '2025-04-09 16:15:00'), (19, 3, '2025-04-10 13:00:00'), (19, 4, '2025-04-12 18:00:00'),
(20, 1, '2025-04-10 16:30:00'), (20, 2, '2025-04-10 17:30:00'), (20, 3, '2025-04-11 14:00:00'), (20, 4, '2025-04-13 19:00:00');