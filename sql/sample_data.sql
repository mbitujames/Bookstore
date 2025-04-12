-- SECTION 1: RACHEL RUGURU SQL CODES



-- SECTION 2: JAMES MBITU SQL CODES

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

-- SECTION 3: CYNTHIA KIMANI SQL CODES

