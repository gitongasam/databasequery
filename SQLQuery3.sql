-- Create the Bookstore database
CREATE DATABASE Bookstore;

-- Switch to the Bookstore database
USE Bookstore;

-- Create the Authors table
CREATE TABLE Authors (
  AuthorID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50)
);

-- Create the Books table
CREATE TABLE Books (
  BookID INT PRIMARY KEY,
  Title VARCHAR(100),
  AuthorID INT,
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Insert data into the Authors table
INSERT INTO Authors (AuthorID, FirstName, LastName) VALUES
  (1, 'John', 'Doe'),
  (2, 'Jane', 'Smith'),
  (3, 'David', 'Johnson');

-- Insert data into the Books table
INSERT INTO Books (BookID, Title, AuthorID) VALUES
  (1, 'Book1', 1),
  (2, 'Book2', 2),
  (3, 'Book3', 3);
