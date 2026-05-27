-- CREATE THE DATABASE FOR BETTER WORLD BOOKS
DROP DATABASE IF EXISTS betterworldbooksdb;
CREATE DATABASE betterworldbooksdb;
use betterworldbooksdb;

-- Author Table
CREATE TABLE Author (
    AuthorID INT AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Country VARCHAR(50),
    BirthYear INT,
    PRIMARY KEY (AuthorID)
);

-- Category Table
CREATE TABLE Category (
    CategoryID INT AUTO_INCREMENT,
    CategoryName VARCHAR(50) NOT NULL,
    Description VARCHAR(255),
    PRIMARY KEY (CategoryID)
);

-- Customer Table
CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Street VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    DateCreated DATE,
    PRIMARY KEY (CustomerID)
);

-- Book Table
CREATE TABLE Book (
    BookID INT AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    ISBN VARCHAR(20) NOT NULL,
    AuthorID INT,
    CategoryID INT,
    PublicationYear INT,
    Price DECIMAL(10,2),
    `Condition` VARCHAR(30),
    StockQuantity INT,
    Format VARCHAR(30),
    PRIMARY KEY (BookID),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);
-- CustomerOrder Table
CREATE TABLE CustomerOrder (
    CustomerOrderID INT AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    OrderStatus VARCHAR(30),
    ShippingMethod VARCHAR(30),
    PRIMARY KEY (CustomerOrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- OrderItem Table
CREATE TABLE OrderItem (
    OrderItemID INT AUTO_INCREMENT,
    CustomerOrderID INT,
    BookID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    PRIMARY KEY (OrderItemID),
    FOREIGN KEY (CustomerOrderID) REFERENCES CustomerOrder(CustomerOrderID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);

-- INSERT DATA BELOW

-- Inserting author data
INSERT INTO Author VALUES (1, 'Jane', 'Austen', 'United Kingdom', 1775);
INSERT INTO Author VALUES (2, 'Mark', 'Twain', 'United States', 1835);
INSERT INTO Author VALUES (3, 'George', 'Orwell', 'United Kingdom', 1903);
INSERT INTO Author VALUES (4, 'Harper', 'Lee', 'United States', 1926);
INSERT INTO Author VALUES (5, 'F. Scott', 'Fitzgerald', 'United States', 1896);
INSERT INTO Author VALUES (6, 'J.K.', 'Rowling', 'United Kingdom', 1965);
INSERT INTO Author VALUES (7, 'Ernest', 'Hemingway', 'United States', 1899);
INSERT INTO Author VALUES (8, 'Mary', 'Shelley', 'United Kingdom', 1797);
INSERT INTO Author VALUES (9, 'Leo', 'Tolstoy', 'Russia', 1828);
INSERT INTO Author VALUES (10, 'Charles', 'Dickens', 'United Kingdom', 1812);
INSERT INTO Author VALUES (11, 'Toni', 'Morrison', 'United States', 1931);
INSERT INTO Author VALUES (12, 'Paulo', 'Coelho', 'Brazil', 1947);
INSERT INTO Author VALUES (13, 'Chinua', 'Achebe', 'Nigeria', 1930);
INSERT INTO Author VALUES (14, 'Isabel', 'Allende', 'Chile', 1942);
INSERT INTO Author VALUES (15, 'Khaled', 'Hosseini', 'Afghanistan', 1965);

-- Inserting category data
INSERT INTO Category VALUES (1, 'Classic Literature', 'Famous and enduring literary works');
INSERT INTO Category VALUES (2, 'Historical Fiction', 'Fiction set in the past with historical themes');
INSERT INTO Category VALUES (3, 'Science Fiction', 'Books based on futuristic science and technology');
INSERT INTO Category VALUES (4, 'Fantasy', 'Books with magical or supernatural elements');
INSERT INTO Category VALUES (5, 'Mystery', 'Books centered on solving crimes or uncovering secrets');
INSERT INTO Category VALUES (6, 'Biography', 'Books about a person''s life');
INSERT INTO Category VALUES (7, 'Memoir', 'Personal life stories written by the subject');
INSERT INTO Category VALUES (8, 'Children''s', 'Books written for children and young readers');
INSERT INTO Category VALUES (9, 'Education', 'Academic and instructional books');
INSERT INTO Category VALUES (10, 'Business', 'Books related to business and management');
INSERT INTO Category VALUES (11, 'Technology', 'Books about computers, programming, and innovation');
INSERT INTO Category VALUES (12, 'Self-Help', 'Books focused on personal improvement');
INSERT INTO Category VALUES (13, 'Health', 'Books about wellness, medicine, and healthy living');
INSERT INTO Category VALUES (14, 'Travel', 'Books about travel experiences and destinations');
INSERT INTO Category VALUES (15, 'Philosophy', 'Books exploring ideas about life, ethics, and knowledge');

-- Inserting customer data
INSERT INTO Customer VALUES (1, 'Emily', 'Carter', 'emily.carter@email.com', '973-555-1001', '12 Maple Ave', 'Montclair', 'NJ', '07042', '2024-01-10');
INSERT INTO Customer VALUES (2, 'James', 'Walker', 'james.walker@email.com', '201-555-1002', '45 Oak Street', 'Newark', 'NJ', '07102', '2024-01-15');
INSERT INTO Customer VALUES (3, 'Sophia', 'Mitchell', 'sophia.mitchell@email.com', '732-555-1003', '89 Pine Road', 'Jersey City', 'NJ', '07302', '2024-01-20');
INSERT INTO Customer VALUES (4, 'Liam', 'Turner', 'liam.turner@email.com', '609-555-1004', '23 Cedar Lane', 'Princeton', 'NJ', '08540', '2024-02-01');
INSERT INTO Customer VALUES (5, 'Olivia', 'Bennett', 'olivia.bennett@email.com', '908-555-1005', '67 Birch Blvd', 'Hoboken', 'NJ', '07030', '2024-02-05');
INSERT INTO Customer VALUES (6, 'Noah', 'Parker', 'noah.parker@email.com', '856-555-1006', '34 Walnut St', 'Cherry Hill', 'NJ', '08002', '2024-02-10');
INSERT INTO Customer VALUES (7, 'Ava', 'Collins', 'ava.collins@email.com', '973-555-1007', '91 Elm Street', 'Paterson', 'NJ', '07501', '2024-02-14');
INSERT INTO Customer VALUES (8, 'William', 'Reed', 'william.reed@email.com', '201-555-1008', '56 Spruce Court', 'Hackensack', 'NJ', '07601', '2024-02-20');
INSERT INTO Customer VALUES (9, 'Isabella', 'Cook', 'isabella.cook@email.com', '732-555-1009', '102 Willow Way', 'Edison', 'NJ', '08817', '2024-03-01');
INSERT INTO Customer VALUES (10, 'Benjamin', 'Murphy', 'benjamin.murphy@email.com', '609-555-1010', '11 Aspen Drive', 'Trenton', 'NJ', '08608', '2024-03-05');
INSERT INTO Customer VALUES (11, 'Mia', 'Rogers', 'mia.rogers@email.com', '908-555-1011', '78 Poplar Ave', 'Elizabeth', 'NJ', '07201', '2024-03-10');
INSERT INTO Customer VALUES (12, 'Lucas', 'Bailey', 'lucas.bailey@email.com', '856-555-1012', '29 Chestnut Street', 'Camden', 'NJ', '08102', '2024-03-15');
INSERT INTO Customer VALUES (13, 'Charlotte', 'Cooper', 'charlotte.cooper@email.com', '973-555-1013', '140 River Road', 'Clifton', 'NJ', '07011', '2024-03-20');
INSERT INTO Customer VALUES (14, 'Henry', 'Richardson', 'henry.richardson@email.com', '201-555-1014', '9 Summit Ave', 'Fort Lee', 'NJ', '07024', '2024-03-25');
INSERT INTO Customer VALUES (15, 'Amelia', 'Peterson', 'amelia.peterson@email.com', '732-555-1015', '65 Park Place', 'New Brunswick', 'NJ', '08901', '2024-04-01');

-- Inserting book data
INSERT INTO Book VALUES (1, 'Pride and Prejudice', 'ISBN001', 1, 1, 1813, 12.99, 'Used - Good', 10, 'Paperback');
INSERT INTO Book VALUES (2, 'Adventures of Huckleberry Finn', 'ISBN002', 2, 1, 1884, 10.99, 'Used - Fair', 8, 'Paperback');
INSERT INTO Book VALUES (3, '1984', 'ISBN003', 3, 3, 1949, 14.99, 'Used - Good', 15, 'Hardcover');
INSERT INTO Book VALUES (4, 'To Kill a Mockingbird', 'ISBN004', 4, 1, 1960, 13.99, 'Used - Very Good', 12, 'Paperback');
INSERT INTO Book VALUES (5, 'The Great Gatsby', 'ISBN005', 5, 1, 1925, 11.99, 'Used - Good', 9, 'Paperback');
INSERT INTO Book VALUES (6, 'Harry Potter and the Sorcerer''s Stone', 'ISBN006', 6, 4, 1997, 19.99, 'Used - Like New', 20, 'Hardcover');
INSERT INTO Book VALUES (7, 'The Old Man and the Sea', 'ISBN007', 7, 1, 1952, 9.99, 'Used - Fair', 7, 'Paperback');
INSERT INTO Book VALUES (8, 'Frankenstein', 'ISBN008', 8, 3, 1818, 10.49, 'Used - Good', 6, 'Paperback');
INSERT INTO Book VALUES (9, 'War and Peace', 'ISBN009', 9, 2, 1869, 18.99, 'Used - Good', 5, 'Hardcover');
INSERT INTO Book VALUES (10, 'Great Expectations', 'ISBN010', 10, 1, 1861, 12.49, 'Used - Fair', 11, 'Paperback');
INSERT INTO Book VALUES (11, 'Beloved', 'ISBN011', 11, 1, 1987, 13.49, 'Used - Very Good', 10, 'Paperback');
INSERT INTO Book VALUES (12, 'The Alchemist', 'ISBN012', 12, 12, 1988, 15.99, 'Used - Like New', 14, 'Paperback');
INSERT INTO Book VALUES (13, 'Things Fall Apart', 'ISBN013', 13, 1, 1958, 11.49, 'Used - Good', 13, 'Paperback');
INSERT INTO Book VALUES (14, 'The House of the Spirits', 'ISBN014', 14, 2, 1982, 14.49, 'Used - Good', 9, 'Paperback');
INSERT INTO Book VALUES (15, 'The Kite Runner', 'ISBN015', 15, 2, 2003, 16.99, 'Used - Very Good', 12, 'Paperback');

-- Inserting customer order data
INSERT INTO CustomerOrder VALUES (1, 1, '2024-04-05', 25.98, 'Shipped', 'Standard');
INSERT INTO CustomerOrder VALUES (2, 2, '2024-04-06', 14.99, 'Delivered', 'Express');
INSERT INTO CustomerOrder VALUES (3, 3, '2024-04-07', 31.98, 'Processing', 'Standard');
INSERT INTO CustomerOrder VALUES (4, 4, '2024-04-08', 13.99, 'Delivered', 'Standard');
INSERT INTO CustomerOrder VALUES (5, 5, '2024-04-09', 19.99, 'Shipped', 'Express');
INSERT INTO CustomerOrder VALUES (6, 6, '2024-04-10', 28.98, 'Processing', 'Standard');
INSERT INTO CustomerOrder VALUES (7, 7, '2024-04-11', 11.99, 'Delivered', 'Standard');
INSERT INTO CustomerOrder VALUES (8, 8, '2024-04-12', 24.98, 'Shipped', 'Express');
INSERT INTO CustomerOrder VALUES (9, 9, '2024-04-13', 10.49, 'Delivered', 'Standard');
INSERT INTO CustomerOrder VALUES (10, 10, '2024-04-14', 18.99, 'Processing', 'Standard');
INSERT INTO CustomerOrder VALUES (11, 11, '2024-04-15', 12.49, 'Shipped', 'Express');
INSERT INTO CustomerOrder VALUES (12, 12, '2024-04-16', 29.48, 'Delivered', 'Standard');
INSERT INTO CustomerOrder VALUES (13, 13, '2024-04-17', 16.99, 'Processing', 'Standard');
INSERT INTO CustomerOrder VALUES (14, 14, '2024-04-18', 27.98, 'Shipped', 'Express');
INSERT INTO CustomerOrder VALUES (15, 15, '2024-04-19', 15.99, 'Delivered', 'Standard');

-- Inserting order item data
INSERT INTO OrderItem VALUES (1, 1, 1, 2, 12.99);
INSERT INTO OrderItem VALUES (2, 2, 3, 1, 14.99);
INSERT INTO OrderItem VALUES (3, 3, 5, 2, 11.99);
INSERT INTO OrderItem VALUES (4, 4, 4, 1, 13.99);
INSERT INTO OrderItem VALUES (5, 5, 6, 1, 19.99);
INSERT INTO OrderItem VALUES (6, 6, 2, 2, 10.99);
INSERT INTO OrderItem VALUES (7, 7, 5, 1, 11.99);
INSERT INTO OrderItem VALUES (8, 8, 3, 2, 14.99);
INSERT INTO OrderItem VALUES (9, 9, 8, 1, 10.49);
INSERT INTO OrderItem VALUES (10, 10, 9, 1, 18.99);
INSERT INTO OrderItem VALUES (11, 11, 10, 1, 12.49);
INSERT INTO OrderItem VALUES (12, 12, 12, 2, 14.74);
INSERT INTO OrderItem VALUES (13, 13, 15, 1, 16.99);
INSERT INTO OrderItem VALUES (14, 14, 1, 2, 13.99);
INSERT INTO OrderItem VALUES (15, 15, 12, 1, 15.99);

-- CREATE INDEX
SHOW INDEX FROM Book;

-- creating a new index
CREATE INDEX idx_book_title ON Book(Title);

SHOW INDEX FROM Book;

-- CREATE VIEWS

-- Creating a view that shows customer orders with book details)

CREATE VIEW order_details AS
SELECT 
    c.FirstName,
    c.LastName,
    b.Title,
    oi.Quantity,
    oi.UnitPrice,
    co.OrderDate
FROM Customer c, CustomerOrder co, OrderItem oi, Book b
WHERE c.CustomerID = co.CustomerID
AND co.CustomerOrderID = oi.CustomerOrderID
AND oi.BookID = b.BookID;

SELECT * FROM order_details;

-- CREATE TEMPORARY TABLES

-- creating temporary table based on query result
CREATE TEMPORARY TABLE low_stock_books AS
SELECT BookID, Title, StockQuantity
FROM Book
WHERE StockQuantity < 10;

SELECT * FROM low_stock_books;

-- CREATE TRIGGER
-- create trigger to reduce stock after a new order item is inserted

DROP TRIGGER IF EXISTS update_book_stock;

DELIMITER //

CREATE TRIGGER update_book_stock
AFTER INSERT ON OrderItem
FOR EACH ROW
BEGIN
    UPDATE Book
    SET StockQuantity = StockQuantity - NEW.Quantity
    WHERE BookID = NEW.BookID;
END;
//

DELIMITER ;

-- testing the trigger
SELECT BookID, Title, StockQuantity
FROM Book
WHERE BookID = 3;

SELECT COUNT(*) AS OrderItemCount
FROM OrderItem;

INSERT INTO OrderItem VALUES (16, 1, 3, 1, 14.99);

SELECT BookID, Title, StockQuantity
FROM Book
WHERE BookID = 3;

SELECT COUNT(*) AS OrderItemCount
FROM OrderItem;

---- CREATE STORED PROCEDURE
--- This stored procedure takes a CustomerOrderID as input and calculates the total value 
-- of that order by summing the product of quantity and unit price from the OrderItem table

DROP PROCEDURE IF EXISTS calculate_order_total;

DELIMITER //

CREATE PROCEDURE calculate_order_total(IN order_id INT)
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(Quantity * UnitPrice)
    INTO total
    FROM OrderItem
    WHERE CustomerOrderID = order_id;

    SELECT CONCAT('Total for Order ', order_id, ': $', total) AS result;
END;
//

DELIMITER ;

-- testing the stored procedure
CALL calculate_order_total(1);
CALL calculate_order_total(3);

--- CREATE FUNCTION
-- This function return the number of books in a given category
DROP FUNCTION IF EXISTS count_books_in_category;

DELIMITER //

CREATE FUNCTION count_books_in_category(category_id_input INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM Book
    WHERE CategoryID = category_id_input;

    RETURN total;
END;
//

DELIMITER ;

-- testing the function
SELECT count_books_in_category(1) AS BooksInCategory1;
SELECT count_books_in_category(2) AS BooksInCategory2;
SELECT count_books_in_category(3) AS BooksInCategory3;