-- This SQL script contains codes for creating all the tables and populating the bookstore database 

                         -- SECTION 1: RACHEL RUGURU SQL CODES

--CODES FOR CREATING THE TABLES
-- creating the database
CREATE DATABASE bookstore;
USE bookstore;

-- creating Language table
CREATE TABLE book_language (
    language_id INT PRIMARY KEY AUTO_INCREMENT,
    language_name VARCHAR(50) NOT NULL,
    language_code VARCHAR(10) NOT NULL
);

-- creating Publisher table
CREATE TABLE publisher (
    publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    publisher_name VARCHAR(100) NOT NULL,
    publisher_website VARCHAR(255)
);

-- creating Author table
CREATE TABLE author (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL,
    author_bio TEXT,
    birth_date DATE
);

-- creating Book table
CREATE TABLE book (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    publication_year INT,
    publisher_id INT,
    language_id INT,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL DEFAULT 0,
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
    FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);

-- creating Book-Author relationship (many-to-many)
CREATE TABLE book_author (
    book_id INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

-- inserting into book language table
INSERT INTO book_language (language_name, language_code) VALUES 
('English', 'en'),
('Swahili', 'sw'),
('French', 'fr'),
('German', 'de'),
('Spanish', 'es'),
('Arabic', 'ar'),
('Chinese', 'zh'),
('Japanese', 'ja');

--CODES FOR INSERTING THE DATA INTO THE TABLES

-- inserting into publisher table
INSERT INTO publisher (publisher_name, publisher_website) VALUES 
('Penguin Random House', 'https://www.penguinrandomhouse.com'),
('HarperCollins', 'https://www.harpercollins.com'),
('Longhorn Publishers', 'https://www.longhornpublishers.com'),
('Oxford University Press', 'https://global.oup.com'),
('Mkuki na Nyota', 'https://www.mkukinanyota.com'),
('Storymoja Africa', 'https://storymojaafrica.co.ke'),
('Macmillan Publishers', 'https://www.macmillaneducation.com'),
('Jomo Kenyatta Foundation', 'https://www.jkf.co.ke'),
('East African Educational Publishers', 'https://www.eastafricanpublishers.com'),
('Kwani Trust', 'https://www.kwani.org');

-- inserting into books with different categories
INSERT INTO book (title, isbn, publisher_id, language_id, price, stock_quantity, publication_year) VALUES
-- english books
-- Children's (5)
('Harry Potter and the Philosopher''s Stone', '9780747532743', 1, 1, 12.99, 50, 1997),
('Charlie and the Chocolate Factory', '9780142410318', 1, 1, 8.99, 40, 1964),
('Matilda', '9780142410370', 1, 1, 7.99, 35, 1988),
('The BFG', '9780142410387', 1, 1, 9.50, 30, 1982),
('Tales of a Fourth Grade Nothing', '9780142401019', 1, 1, 6.99, 25, 1972),
-- Adventure (5)
('The Da Vinci Code', '9780307474278', 2, 1, 10.99, 45, 2003),
('The Lost Symbol', '9780385504225', 2, 1, 11.50, 38, 2009),
('Treasure Island', '9780141321004', 1, 1, 5.99, 28, 1883),
('Jurassic Park', '9780345370778', 2, 1, 9.99, 32, 1990),
('The Hobbit', '9780261102217', 4, 1, 12.50, 42, 1937),
-- Horror (5)
('The Shining', '9780307743657', 2, 1, 9.99, 30, 1977),
('It', '9781501142970', 2, 1, 11.99, 35, 1986),
('Goosebumps: Welcome to Dead House', '9780590453670', 2, 1, 6.50, 40, 1992),
('Pet Sematary', '9781501156700', 2, 1, 10.50, 25, 1983),
('Dracula', '9780141439846', 1, 1, 7.99, 20, 1897),
-- Novels (5)
('The Kite Runner', '9781594631931', 2, 1, 10.99, 40, 2003),
('A Time to Kill', '9780385537148', 2, 1, 9.99, 35, 1989),
('The Firm', '9780385537131', 2, 1, 8.99, 30, 1991),
('The Alchemist', '9780062315007', 2, 1, 11.50, 45, 1988),
('To Kill a Mockingbird', '9780061120084', 2, 1, 9.50, 38, 1960),
-- Swahili Books (20)
-- Children's (5)
('Sungura na Simba', '9789966498181', 3, 2, 5.99, 40, 2005),
('Hadithi za Kukupa Mafunzo', '9789966252401', 5, 2, 4.99, 35, 1998),
('Mfalme Mwerevu', '9789966252418', 5, 2, 6.50, 30, 2001),
('Nyani Mjanja', '9789966498198', 3, 2, 5.50, 25, 2007),
('Kisa cha Mamba na Kiboko', '9789966252425', 5, 2, 4.50, 20, 2003),
-- Adventure (5)
('Kiu', '9789987081491', 5, 2, 8.99, 30, 1972),
('Dunia Uwanja wa Fujo', '9789987081507', 5, 2, 9.50, 25, 1980),
('Mstahiki Meya', '9789966252432', 5, 2, 7.99, 28, 1995),
('Kilio cha Haki', '9789987081514', 5, 2, 8.50, 22, 2001),
('Siri ya Mwalimu Mwafrika', '9789966252449', 5, 2, 9.99, 20, 2008),
-- Horror (5)
('Joka la Mtoni', '9789987081521', 5, 2, 10.50, 18, 1999),
('Mzimu wa Wazimamoto', '9789966252456', 5, 2, 9.99, 15, 2005),
('Kivuli cha Mauti', '9789987081538', 5, 2, 11.50, 12, 2010),
('Shetani Msalabani', '9789966252463', 5, 2, 8.99, 20, 2003),
('Mzimu wa Watu Wazima', '9789987081545', 5, 2, 10.99, 15, 2007),
-- Novels (5)
('Utengano', '9789987081552', 5, 2, 12.99, 25, 1980),
('Kosa la Bwana Macha', '9789966252470', 5, 2, 11.50, 20, 1992),
('Dunia Yao', '9789987081569', 5, 2, 10.99, 18, 2005),
('Makuadi wa Soko Huria', '9789966252487', 5, 2, 9.99, 22, 2012),
('Nafsi Yangu', '9789987081576', 5, 2, 8.50, 15, 2015);

-- inserting into author table
INSERT INTO author (author_name, author_bio, birth_date) VALUES 
('J.K. Rowling', 'British author best known for the Harry Potter series', '1965-07-31'),
('Stephen King', 'American author of horror, supernatural fiction, suspense, and fantasy novels', '1947-09-21'),
('Ngũgĩ wa Thiong''o', 'Kenyan writer and academic who writes primarily in Gikuyu and English', '1938-01-05'),
('Shaaban Robert', 'Tanzanian poet, author, and essayist who wrote in Swahili', '1909-01-01'),
('Roald Dahl', 'British novelist, short-story writer, poet, screenwriter, and wartime fighter pilot', '1916-09-13'),
('R.L. Stine', 'American novelist, short story writer, television producer, screenwriter, and executive editor', '1943-10-08'),
('Khaled Hosseini', 'Afghan-American novelist, physician, activist, humanitarian, and UNHCR goodwill ambassador', '1965-03-04'),
('Mukoma wa Ngugi', 'Kenyan author and assistant professor of English at Cornell University', '1971-01-01'),
('Ken Walibora', 'Kenyan author, journalist, translator and scholar of Kiswahili literature', '1961-01-01'),
('Enid Blyton', 'English children''s writer whose books have been among the world''s best-sellers since the 1930s', '1897-08-11'),
('John Grisham', 'American novelist, attorney, politician, and activist best known for his popular legal thrillers', '1955-02-08'),
('Barbara Kimenye', 'Ugandan children''s writer and columnist', '1929-01-01'),
('Dan Brown', 'American author best known for his thriller novels including The Da Vinci Code', '1964-06-22'),
('Euphrase Kezilahabi', 'Tanzanian novelist, poet, and scholar', '1944-04-13'),
('Judy Blume', 'American writer known for children''s and young adult fiction', '1938-02-12'),
('Shafi Adam Shafi', 'Tanzanian novelist and short story writer in Swahili', '1940-01-01'),
('Chinua Achebe', 'Nigerian novelist, poet, professor, and critic', '1930-11-16'),
('Wole Soyinka', 'Nigerian playwright, poet, and essayist in the English language', '1934-07-13'),
('Nuruddin Farah', 'Somali novelist', '1945-11-24'),
('Binyavanga Wainaina', 'Kenyan author, journalist and 2002 Caine Prize winner', '1971-01-18'),
('Margaret Atwood', 'Canadian poet, novelist, literary critic, and environmental activist', '1939-11-18'),
('Chimamanda Ngozi Adichie', 'Nigerian writer whose works range from novels to short stories to nonfiction', '1977-09-15'),
('Toni Morrison', 'American novelist, essayist, editor, and professor who won the Nobel Prize in Literature', '1931-02-18'),
('Meja Mwangi', 'Kenyan novelist known for works about urban life and social issues', '1948-12-25'),
('Okot p''Bitek', 'Ugandan poet, novelist, and social anthropologist who wrote in Acholi and English', '1931-06-07'),
('Ama Ata Aidoo', 'Ghanaian author, poet, playwright, and academic', '1942-03-23'),
('Mariama Bâ', 'Senegalese author and feminist who wrote in French', '1929-04-17'),
('Bessie Head', 'Botswana writer of novels, short stories and autobiographical works', '1937-07-06'),
('Naguib Mahfouz', 'Egyptian writer who won the 1988 Nobel Prize in Literature', '1911-12-11'),
('Petina Gappah', 'Zimbabwean lawyer and writer of fiction, essays and opinion pieces', '1971-01-01');

--CODES FOR CREATING A USER
-- Creating user with limited privileges
CREATE USER 'bookstore_app'@'localhost' IDENTIFIED BY 'Password456!';
GRANT SELECT, INSERT, UPDATE, DELETE ON bookstore.* TO 'bookstore_app'@'localhost';



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
-- creating Order status table
CREATE TABLE order_status (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(50) NOT NULL
);

-- creating Shipping method table
CREATE TABLE shipping_method (
    method_id INT PRIMARY KEY AUTO_INCREMENT,
    method_name VARCHAR(50) NOT NULL,
    cost DECIMAL(10,2) NOT NULL
);

-- creating Customer order table
CREATE TABLE cust_order (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    shipping_method_id INT NOT NULL,
    address_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(method_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

-- creating Order line table
CREATE TABLE order_line (
    line_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

-- creating Order history table
CREATE TABLE order_history (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    status_id INT NOT NULL,
    status_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (status_id) REFERENCES order_status(status_id)
);

--CODES FOR INSERTING THE DATA INTO THE TABLES

--inserting into shipping method
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

--CODES FOR CREATING A USER
-- Creating read-only user for reports
CREATE USER 'bookstore_report'@'localhost' IDENTIFIED BY 'Password789!';
GRANT SELECT ON BookStore.* TO 'bookstore_report'@'localhost';