-- Заповнення таблиці "authors"
INSERT INTO LibraryManagement.authors (author_name) VALUES 
('Lori M. Lee'),
('Marcel Kuhn');

-- Заповнення таблиці "genres"
INSERT INTO LibraryManagement.genres (genre_name) VALUES 
('Fantasy'),
('Manga');

-- Заповнення таблиці "books"
INSERT INTO LibraryManagement.books (title, publication_year, author_id, genre_id) VALUES 
('Calling of Light', 2024, 1, 1),
("Draw Like a Mangaka: The Complete Beginner's Guide to Learning to Draw Manga", 2024, 2, 2);

-- Заповнення таблиці "users"
INSERT INTO LibraryManagement.users (username, email) VALUES 
('Samantha Shannon', 'shannon@example.com'),
('Marielle Thompson', 'thompson@example.com');

-- Заповнення таблиці "borrowed_books"
INSERT INTO LibraryManagement.borrowed_books (book_id, user_id, borrow_date, return_date) VALUES 
(1, 1, '2024-04-29', '2024-05-10'),
(2, 2, '2024-05-30', '2024-06-12');
