CREATE DATABASE library_management1;
USE library_management1;
# to reate the table authors:
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    birth_year INT
);

# Insert 10 Authors
INSERT INTO authors
(author_id, author_name, country, birth_year)
VALUES
(1, 'George Orwell', 'United Kingdom', 1903),
(2, 'Jane Austen', 'United Kingdom', 1775),
(3, 'Mark Twain', 'United States', 1835),
(4, 'Leo Tolstoy', 'Russia', 1828),
(5, 'Rabindranath Tagore', 'India', 1861),
(6, 'R. K. Narayan', 'India', 1906),
(7, 'Agatha Christie', 'United Kingdom', 1890),
(8, 'Arthur Conan Doyle', 'United Kingdom', 1859),
(9, 'Jules Verne', 'France', 1828),
(10, 'Ernest Hemingway', 'United States', 1899);

# Check:
SELECT * FROM authors;

# 4. Create books Table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INT,
    category VARCHAR(50),
    publication_year INT,
    price DECIMAL(10,2),
    available_copies INT,

    FOREIGN KEY (author_id)
    REFERENCES authors(author_id)
);

# 5. Insert 40 Books
INSERT INTO books
(book_id, title, author_id, category, publication_year, price, available_copies)
VALUES
(1, '1984', 1, 'Dystopian', 1949, 399.00, 3),
(2, 'Animal Farm', 1, 'Political Fiction', 1945, 299.00, 4),
(3, 'Pride and Prejudice', 2, 'Romance', 1813, 349.00, 2),
(4, 'Sense and Sensibility', 2, 'Romance', 1811, 329.00, 3),
(5, 'Emma', 2, 'Romance', 1815, 379.00, 2),
(6, 'Huckleberry Finn', 3, 'Adventure', 1884, 399.00, 2),
(7, 'Tom Sawyer', 3, 'Adventure', 1876, 359.00, 3),
(8, 'The Prince and the Pauper', 3, 'Historical Fiction', 1881, 329.00, 2),
(9, 'War and Peace', 4, 'Historical Fiction', 1869, 699.00, 1),
(10, 'Anna Karenina', 4, 'Romance', 1878, 599.00, 2),
(11, 'The Death of Ivan Ilyich', 4, 'Philosophy', 1886, 299.00, 3),
(12, 'Gitanjali', 5, 'Poetry', 1910, 249.00, 4),
(13, 'The Home and the World', 5, 'Drama', 1916, 329.00, 2),
(14, 'The Postmaster', 5, 'Short Stories', 1891, 199.00, 3),
(15, 'Swami and Friends', 6, 'Fiction', 1935, 299.00, 4),
(16, 'The Guide', 6, 'Fiction', 1958, 349.00, 2),
(17, 'Malgudi Days', 6, 'Short Stories', 1943, 399.00, 3),
(18, 'The Bachelor of Arts', 6, 'Fiction', 1937, 319.00, 2),
(19, 'Murder on the Orient Express', 7, 'Mystery', 1934, 449.00, 3),
(20, 'And Then There Were None', 7, 'Mystery', 1939, 499.00, 2),
(21, 'The Murder of Roger Ackroyd', 7, 'Mystery', 1926, 429.00, 2),
(22, 'Death on the Nile', 7, 'Mystery', 1937, 459.00, 3),
(23, 'The Mysterious Affair at Styles', 7, 'Mystery', 1920, 399.00, 2),
(24, 'Hound of the Baskervilles', 8, 'Mystery', 1902, 429.00, 3),
(25, 'A Study in Scarlet', 8, 'Mystery', 1887, 369.00, 2),
(26, 'The Sign of the Four', 8, 'Mystery', 1890, 379.00, 3),
(27, 'The Lost World', 8, 'Adventure', 1912, 399.00, 2),
(28, 'The Valley of Fear', 8, 'Mystery', 1915, 389.00, 2),
(29, 'Twenty Thousand Leagues Under the Sea', 9, 'Science Fiction', 1870, 499.00, 3),
(30, 'Around the World in Eighty Days', 9, 'Adventure', 1872, 449.00, 4),
(31, 'Journey to the Centre of the Earth', 9, 'Science Fiction', 1864, 479.00, 2),
(32, 'From the Earth to the Moon', 9, 'Science Fiction', 1865, 429.00, 2),
(33, 'The Mysterious Island', 9, 'Adventure', 1874, 459.00, 3),
(34, 'The Old Man and the Sea', 10, 'Fiction', 1952, 299.00, 4),
(35, 'A Farewell to Arms', 10, 'War Fiction', 1929, 399.00, 2),
(36, 'For Whom the Bell Tolls', 10, 'War Fiction', 1940, 449.00, 2),
(37, 'The Sun Also Rises', 10, 'Fiction', 1926, 379.00, 3),
(38, 'To Have and Have Not', 10, 'Fiction', 1937, 359.00, 2),
(39, 'Coming Up for Air', 1, 'Fiction', 1939, 349.00, 2),
(40, 'Northanger Abbey', 2, 'Romance', 1817, 339.00, 3);

# Check:
SELECT COUNT(*) AS total_books
FROM books;
# 6. Create members Table
CREATE TABLE members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    join_date DATE
);

#Insert 25 Members
INSERT INTO members
(member_id, member_name, email, phone, join_date)
VALUES
(1, 'Aarav Sharma', 'aarav@example.com', '9000000001', '2025-01-05'),
(2, 'Ananya Reddy', 'ananya@example.com', '9000000002', '2025-01-12'),
(3, 'Rahul Kumar', 'rahul@example.com', '9000000003', '2025-01-20'),
(4, 'Sneha Patel', 'sneha@example.com', '9000000004', '2025-01-28'),
(5, 'Vikram Singh', 'vikram@example.com', '9000000005', '2025-02-03'),
(6, 'Priya Nair', 'priya@example.com', '9000000006', '2025-02-10'),
(7, 'Arjun Rao', 'arjun@example.com', '9000000007', '2025-02-18'),
(8, 'Kavya Reddy', 'kavya@example.com', '9000000008', '2025-02-25'),
(9, 'Rohit Verma', 'rohit@example.com', '9000000009', '2025-03-02'),
(10, 'Meera Iyer', 'meera@example.com', '9000000010', '2025-03-09'),
(11, 'Sanjay Das', 'sanjay@example.com', '9000000011', '2025-03-16'),
(12, 'Divya Rao', 'divya@example.com', '9000000012', '2025-03-23'),
(13, 'Kiran Reddy', 'kiran@example.com', '9000000013', '2025-03-30'),
(14, 'Pooja Shah', 'pooja@example.com', '9000000014', '2025-04-06'),
(15, 'Manish Gupta', 'manish@example.com', '9000000015', '2025-04-13'),
(16, 'Neha Joshi', 'neha@example.com', '9000000016', '2025-04-20'),
(17, 'Aditya Rao', 'aditya@example.com', '9000000017', '2025-04-27'),
(18, 'Ishita Kapoor', 'ishita@example.com', '9000000018', '2025-05-04'),
(19, 'Varun Mehta', 'varun@example.com', '9000000019', '2025-05-11'),
(20, 'Riya Singh', 'riya@example.com', '9000000020', '2025-05-18'),
(21, 'Nikhil Kumar', 'nikhil@example.com', '9000000021', '2025-05-25'),
(22, 'Sahana Rao', 'sahana@example.com', '9000000022', '2025-06-01'),
(23, 'Abhishek Jain', 'abhishek@example.com', '9000000023', '2025-06-08'),
(24, 'Aditi Sharma', 'aditi@example.com', '9000000024', '2025-06-15'),
(25, 'Harish Babu', 'harish@example.com', '9000000025', '2025-06-22');

#7. Create loans Table
CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    status VARCHAR(20),
    fine DECIMAL(10,2),

    FOREIGN KEY (book_id)
    REFERENCES books(book_id),

    FOREIGN KEY (member_id)
    REFERENCES members(member_id)
);
# TO see tables
SHOW TABLES;
drop table loans;
# Check record counts:
SELECT COUNT(*) AS authors_count FROM authors;

SELECT COUNT(*) AS books_count FROM books;

SELECT COUNT(*) AS members_count FROM members;

#  SELECT
SELECT *
FROM books;

SELECT title, category, price
FROM books;

# using where
SELECT *
FROM books
WHERE price > 400;

SELECT *
FROM books
WHERE category = 'Mystery';

SELECT *
FROM members
WHERE member_id <= 10;

# 4. ORDER BY
SELECT title, price
FROM books
ORDER BY price DESC;

SELECT member_name, join_date
FROM members
ORDER BY join_date ASC;

# 5. INNER JOIN
SELECT
    b.book_id,
    b.title,
    a.author_name,
    b.category,
    b.price
FROM books b
INNER JOIN authors a
ON b.author_id = a.author_id;
SELECT
    b.book_id,
    b.title,
    a.author_name,
    b.category,
    b.price
FROM books b
INNER JOIN authors a
ON b.author_id = a.author_id;

# 6. LEFT JOIN
SELECT
    a.author_id,
    a.author_name,
    b.title
FROM authors a
LEFT JOIN books b
ON a.author_id = b.author_id
ORDER BY a.author_id;

#7. GROUP BY
SELECT
    a.author_name,
    COUNT(b.book_id) AS total_books
FROM authors a
INNER JOIN books b
ON a.author_id = b.author_id
GROUP BY a.author_name;

SELECT
    a.author_name,
    COUNT(b.book_id) AS total_books
FROM authors a
INNER JOIN books b
ON a.author_id = b.author_id
GROUP BY a.author_name;

# 8. HAVING

SELECT
    a.author_name,
    COUNT(b.book_id) AS total_books
FROM authors a
INNER JOIN books b
ON a.author_id = b.author_id
GROUP BY a.author_name
HAVING COUNT(b.book_id) > 2;

SELECT
    a.author_name,
    COUNT(b.book_id) AS total_books
FROM authors a
INNER JOIN books b
ON a.author_id = b.author_id
GROUP BY a.author_name
HAVING COUNT(b.book_id) > 2;

#9. Aggregate Functions
SELECT COUNT(*) AS total_books
FROM books;

# SUM
SELECT SUM(price) AS total_book_value
FROM books;

# AVG
SELECT ROUND(AVG(price), 2) AS average_price
FROM books;
 
# MAX
SELECT MAX(price) AS highest_price
FROM books;

# MIN
SELECT MIN(price) AS lowest_price
FROM books;
# ALl

SELECT
    COUNT(*) AS total_books,
    SUM(price) AS total_value,
    ROUND(AVG(price), 2) AS average_price,
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price
FROM books;

# 10. Subqueries

SELECT
    title,
    price
FROM books
WHERE price > (
    SELECT AVG(price)
    FROM books
);



SELECT
    title,
    price
FROM books
WHERE price < (
    SELECT AVG(price)
    FROM books
);

#11. Views
CREATE VIEW expensive_books AS
SELECT
    book_id,
    title,
    category,
    price
FROM books
WHERE price > 400;

SELECT *
FROM expensive_books;

#12. Stored Procedures
DELIMITER $$

CREATE PROCEDURE GetBooksAbovePrice(IN min_price DECIMAL(10,2))
BEGIN

    SELECT
        title,
        category,
        price
    FROM books
    WHERE price > min_price
    ORDER BY price DESC;

END $$

DELIMITER ;

CALL GetBooksAbovePrice(400);

# 13. Transactions
START TRANSACTION;

UPDATE books
SET available_copies = available_copies - 1
WHERE book_id = 1;

COMMIT;

# ROLLBACK
START TRANSACTION;

UPDATE books
SET available_copies = available_copies - 1
WHERE book_id = 2;

ROLLBACK;

# SAVEPOINT
START TRANSACTION;

UPDATE books
SET available_copies = available_copies - 1
WHERE book_id = 3;

SAVEPOINT book_savepoint;

UPDATE books
SET available_copies = available_copies - 1
WHERE book_id = 4;

ROLLBACK TO book_savepoint;

COMMIT;

# 14. Window Functions
# ROW_NUMBER
SELECT
    book_id,
    title,
    price,
    ROW_NUMBER() OVER (
        ORDER BY price DESC
    ) AS book_number
FROM books;
#RANK
SELECT
    title,
    price,
    RANK() OVER (
        ORDER BY price DESC
    ) AS price_rank
FROM books;

# DENSE_RANK
SELECT
    title,
    category,
    price,
    DENSE_RANK() OVER (
        PARTITION BY category
        ORDER BY price DESC
    ) AS category_rank
FROM books;
