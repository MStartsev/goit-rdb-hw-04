-- Створення схеми
CREATE SCHEMA IF NOT EXISTS LibraryManagement;

-- Таблиця "authors"
CREATE TABLE IF NOT EXISTS LibraryManagement.authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255)
);

-- Таблиця "genres"
CREATE TABLE IF NOT EXISTS LibraryManagement.genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(255)
);

-- Таблиця "books"
CREATE TABLE IF NOT EXISTS LibraryManagement.books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    publication_year YEAR,
    author_id INT,
    genre_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- Таблиця "users"
CREATE TABLE IF NOT EXISTS LibraryManagement.users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255)
);

-- Таблиця "borrowed_books"
CREATE TABLE IF NOT EXISTS LibraryManagement.borrowed_books (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
