create database LibraryDB_JoinTask;
use LibraryDB_JoinTask;

-- Authors Table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    Country VARCHAR(50)
);

-- Books Table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    PublishYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Insert Authors
INSERT INTO Authors (AuthorID, AuthorName, Country) VALUES
(1, 'George Orwell', 'UK'),
(2, 'Haruki Murakami', 'Japan'),
(3, 'J.K. Rowling', 'UK'),
(4, 'Unknown Author', 'N/A');

-- Insert Books
INSERT INTO Books (BookID, Title, AuthorID, PublishYear) VALUES
(101, '1984', 1, 1949),
(102, 'Norwegian Wood', 2, 1987),
(103, 'Harry Potter and the Sorcerer''s Stone', 3, 1997),
(104, 'The Silent Book', NULL, 2023), -- No author listed
(105, 'Kafka on the Shore', 2, 2002);

-- INNER JOIN:
SELECT Books.Title, Authors.AuthorName
FROM Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID;

-- LEFT JOIN:
SELECT Books.Title, Authors.AuthorName
FROM Books
LEFT JOIN Authors ON Books.AuthorID = Authors.AuthorID;

-- RIGHT JOIN:
SELECT Books.Title, Authors.AuthorName
FROM Books
RIGHT JOIN Authors ON Books.AuthorID = Authors.AuthorID;

-- FULL OUTER JOIN:

SELECT Books.Title, Authors.AuthorName
FROM Books
LEFT JOIN Authors ON Books.AuthorID = Authors.AuthorID
UNION
SELECT Books.Title, Authors.AuthorName
FROM Books
RIGHT JOIN Authors ON Books.AuthorID = Authors.AuthorID;